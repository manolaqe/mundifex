import 'package:flutter/material.dart';

import '../models/post.dart';
import 'utils.dart';

class UsersPerception extends StatelessWidget {
  const UsersPerception({super.key, required this.posts});
  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Users Perception in the area',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Air breathability perception of the users',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Container(
                          width: constraints.maxWidth * Utils.computeAirPerception(posts),
                          height: 10,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: <Color>[Colors.red, Colors.yellow, Colors.green],
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Cleanliness perception of the users',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: LinearProgressIndicator(
                    minHeight: 10,
                    borderRadius: BorderRadius.circular(10),
                    value: Utils.computeCleanPerception(posts),
                    backgroundColor: Colors.grey,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Clean',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Dirty',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Noise perception of the users',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: LinearProgressIndicator(
                    minHeight: 10,
                    borderRadius: BorderRadius.circular(10),
                    value: Utils.computeNoisePerception(posts),
                    backgroundColor: Colors.grey,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Quiet',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Loud',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
