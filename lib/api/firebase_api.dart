// ignore_for_file: always_specify_types

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import '../models/app_user.dart';
import '../models/comment.dart';
import '../models/location_data.dart';
import '../models/post.dart';
import '../presentation/utils.dart';

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

  Future<Post> createPost({
    required String userId,
    required String description,
    required LocationData location,
    required List<XFile> images,
    required double airSliderValue,
    required double cleanSliderValue,
    required double noiseSliderValue,
  }) async {
    final DocumentReference<Map<String, dynamic>> docRef = _firestore.collection('posts').doc();

    final List<String> urls = [];
    for (final XFile image in images) {
      final String fileName = '${DateTime.now().millisecondsSinceEpoch}_${image.path.split('/').last}';

      final Reference ref = _storage.ref('posts/${docRef.id}/$fileName');
      await ref.putFile(File(image.path));
      final String url = await ref.getDownloadURL();
      urls.add(url);
    }

    await docRef.set({
      'id': docRef.id,
      'userId': userId,
      'description': description,
      'location': location.toJson(),
      'photoUrls': urls,
      'airPerception': airSliderValue,
      'cleanPerception': cleanSliderValue,
      'noisePerception': noiseSliderValue,
      'likes': <String>[],
      'dislikes': <String>[],
      'comments': <Map<String, dynamic>>[],
    });

    final Post post = Post(
      id: docRef.id,
      userId: userId,
      description: description,
      location: location,
      photoUrls: urls,
    );

    return post;
  }

  Future<List<Post>> getPosts({required LocationData locationData}) async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore.collection('posts').get();

    return snapshot.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => Post.fromJson(doc.data()))
        .where((Post post) => Utils.isLocationInRadius(post.location, locationData, 2000))
        .toList();
  }
}
