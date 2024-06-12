import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/app_user.dart';
import '../models/comment.dart';
import '../models/location_data.dart';
import '../models/post.dart';

class FirebaseApi {
  const FirebaseApi({
    required FirebaseAuth auth,
    required FirebaseStorage storage,
    required FirebaseFirestore firestore,
  })  : _auth = auth,
        _storage = storage,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseStorage _storage;
  final FirebaseFirestore _firestore;

  Future<AppUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;

    if (user != null) {
      return _extractUser();
    }

    return null;
  }

  Future<AppUser> createUserWithEmailAndPassword({required String email, required String password}) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return _extractUser();
  }

  Future<AppUser> signInWithEmailAndPassword({required String email, required String password}) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    return _extractUser();
  }

  Future<AppUser> signInWithGoogle() async {
    final GoogleAuthProvider provider = GoogleAuthProvider();
    await _auth.signInWithProvider(provider);
    return _extractUser();
  }

  Future<AppUser> signInWithFacebook() async {
    final FacebookAuthProvider provider = FacebookAuthProvider();
    await _auth.signInWithProvider(provider);
    return _extractUser();
  }

  Future<AppUser> changePhoto(String path) async {
    final User user = _auth.currentUser!;

    final Reference ref = _storage.ref('users/${user.uid}/profile.png');
    await ref.putFile(File(path));
    final String url = await ref.getDownloadURL();

    await user.updatePhotoURL(url);
    await _firestore.doc('users/${user.uid}').update(<String, dynamic>{'pictureUrl': url});

    return _extractUser();
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<AppUser> _extractUser() async {
    final User user = _auth.currentUser!;

    final DocumentReference<Map<String, dynamic>> ref = _firestore.doc('users/${user.uid}');
    final DocumentSnapshot<Map<String, dynamic>> doc = await ref.get();

    AppUser appUser;
    if (doc.exists) {
      appUser = AppUser.fromJson(doc.data()!);
    } else {
      final String email = user.email!;
      final String displayName = email.split('@').first;

      appUser = AppUser(
        userId: user.uid,
        email: email,
        displayName: user.displayName ?? displayName,
        photoUrl: user.photoURL!,
      );

      await ref.set(appUser.toJson());
    }

    return appUser;
  }

  Future<List<AppUser>> getUsersByUids(List<String> uids) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await _firestore.collection('users').where('uid', whereIn: uids).get();

    return snapshot.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => AppUser.fromJson(doc.data()))
        .toList();
  }

  Future<List<AppUser>> getUsers() async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore.collection('users').get();

    return snapshot.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => AppUser.fromJson(doc.data()))
        .toList();
  }

  Future<Comment> createComment({
    required String postId,
    required String userId,
    required String value,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('posts').doc(postId);

    final Comment comment = Comment(
      value: value,
      userId: userId,
    );

    await ref.update(<Object, Object?>{
      'comments': FieldValue.arrayUnion([
        {
          'value': value,
          'userId': userId,
        }
      ])
    });

    return comment;
  }

  Future<Post> addLike({
    required String postId,
    required String userId,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('posts').doc(postId);

    await ref.update(<Object, Object?>{
      'likes': FieldValue.arrayUnion([userId])
    });

    return Post.fromJson((await ref.get()).data()!);
  }

  Future<Post> addDislike({
    required String postId,
    required String userId,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('posts').doc(postId);

    await ref.update(<Object, Object?>{
      'dislikes': FieldValue.arrayUnion([userId])
    });

    return Post.fromJson((await ref.get()).data()!);
  }

  Future<Post> removeLike({
    required String postId,
    required String userId,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('posts').doc(postId);

    await ref.update(<Object, Object?>{
      'likes': FieldValue.arrayRemove([userId])
    });

    return Post.fromJson((await ref.get()).data()!);
  }

  Future<Post> removeDislike({
    required String postId,
    required String userId,
  }) async {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('posts').doc(postId);

    await ref.update(<Object, Object?>{
      'dislikes': FieldValue.arrayRemove([userId])
    });

    return Post.fromJson((await ref.get()).data()!);
  }

  Future<List<Post>> getPosts({required LocationData locationData}) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore.collection('posts').get();

    return snapshot.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Post.fromJson(doc.data()))
        .where((Post post) => isLocationInRadius(post.location, locationData, 2000))
        .toList();
  }

  bool isLocationInRadius(LocationData location1, LocationData location2, double radius) {
    final double lat1 = location1.lat;
    final double lon1 = location1.lon;
    final double lat2 = location2.lat;
    final double lon2 = location2.lon;

    final double distance = calculateDistance(lat1, lon1, lat2, lon2);

    return distance <= radius;
  }

  double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const double earthRadius = 6371000; // Earth's radius in meters

    final double dLat = _toRadians(lat2 - lat1);
    final double dLon = _toRadians(lon2 - lon1);

    final double a =
        sin(dLat / 2) * sin(dLat / 2) + cos(_toRadians(lat1)) * cos(_toRadians(lat2)) * sin(dLon / 2) * sin(dLon / 2);
    final double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    final double distance = earthRadius * c;

    return distance;
  }

  double _toRadians(double degrees) {
    return degrees * pi / 180;
  }
}
