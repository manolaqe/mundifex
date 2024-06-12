import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

import '../actions/set.dart';
import '../models/app_user.dart';
import '../models/post.dart';
import 'extensions.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({super.key, required this.posts, required this.users});

  final List<Post> posts;
  final Map<String, AppUser> users;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: posts.map(
      (Post post) {
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          margin: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: users[post.userId]!.photoUrl.isNotEmpty
                          ? NetworkImage(
                              users[post.userId]!.photoUrl,
                            )
                          : const AssetImage('assets/no_image.png') as ImageProvider<Object>,
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          users[post.userId]!.displayName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            const Icon(Icons.location_on_outlined, size: 15),
                            GestureDetector(
                              onTap: () => launchUrl(Uri.parse(
                                  'https://www.google.com/maps/search/?api=1&query=${post.location.lat},${post.location.lon}')),
                              child: Text(
                                'Location: ${post.location.lat}, ${post.location.lon}',
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (post.photoUrls.isNotEmpty)
                CarouselSlider.builder(
                  itemCount: post.photoUrls.length,
                  itemBuilder: (BuildContext context, int index, int realIndex) {
                    if (post.photoUrls[index].isEmpty) {
                      return Image.asset('assets/no_image.png');
                    }
                    return PhotoView(
                      customSize: MediaQuery.of(context).size,
                      enablePanAlways: true,
                      enableRotation: true,
                      imageProvider: NetworkImage(post.photoUrls[index]),
                      backgroundDecoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      initialScale: PhotoViewComputedScale.contained,
                      minScale: PhotoViewComputedScale.contained * 0.8,
                      maxScale: PhotoViewComputedScale.covered * 3.0,
                      basePosition: Alignment.center,
                    );
                  },
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    viewportFraction: 1.0,
                    enlargeFactor: 0.8,
                  ),
                )
              else
                const Center(
                  child: Text('No photos available'),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                            onPressed: () {
                              // setState(() {
                              //   if (!hasVoted) {
                              //     widget.userPost.likes++;
                              //     hasVoted = true;
                              //   } else {
                              //     widget.userPost.likes--;
                              //     hasVoted = false;
                              //   }
                              // });
                            },
                            icon: const Icon(Icons.thumb_up_alt_outlined),
                            label: Text(' ${post.likes.length}')),
                      ],
                    ),
                    ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                        onPressed: () {
                          // setState(() {
                          //   if (!hasVoted) {
                          //     widget.userPost.dislikes++;
                          //     hasVoted = true;
                          //   } else {
                          //     widget.userPost.dislikes--;
                          //     hasVoted = false;
                          //   }
                          // });
                        },
                        icon: const Icon(Icons.thumb_down_alt_outlined),
                        label: Text(' ${post.dislikes.length}')),
                    ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                        onPressed: () {
                          context.dispatch(SetSelectedPost(post.id));
                          Navigator.pushNamed(context, '/comments');
                        },
                        icon: const Icon(Icons.comment_outlined),
                        label: const Text(''))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ).toList());
  }
}
