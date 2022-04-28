import 'package:deep_learning/screens/the_batch_screen.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import 'package:video_player/video_player.dart';
import 'dart:async';
import '../widgets/app_bar_titles.dart';
import 'courses_screen.dart';
import 'home_page.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  VideoPlayerController? _controller;
  VideoPlayerController? _controller2;
  Future<void>? _initializeVideoPlayerFuture;
  Future<void>? _initializeVideoPlayerFuture2;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );
    _controller2 = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );
    _initializeVideoPlayerFuture = _controller!.initialize();
    _initializeVideoPlayerFuture2 = _controller2!.initialize();
    _controller!.setLooping(true);
    _controller2!.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    _controller2!.dispose();

    super.dispose();
  }

  final String blogText = 'Blog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  blogText,
                  style: const TextStyle(
                      color: Colors.black, fontFamily: 'Poppins', fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 400,
                          width: 600,
                          child: FutureBuilder(
                            future: _initializeVideoPlayerFuture,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                return AspectRatio(
                                  aspectRatio: _controller!.value.aspectRatio,
                                  child: VideoPlayer(_controller!),
                                );
                              } else {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(
                              () {
                                if (_controller!.value.isPlaying) {
                                  _controller!.pause();
                                } else {
                                  _controller!.play();
                                }
                              },
                            );
                          },
                          icon: Icon(_controller!.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 400,
                          width: 600,
                          child: FutureBuilder(
                            future: _initializeVideoPlayerFuture2,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                return AspectRatio(
                                  aspectRatio: _controller2!.value.aspectRatio,
                                  child: VideoPlayer(_controller2!),
                                );
                              } else {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(
                              () {
                                if (_controller2!.value.isPlaying) {
                                  _controller2!.pause();
                                } else {
                                  _controller2!.play();
                                }
                              },
                            );
                          },
                          icon: Icon(_controller2!.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {

    return AppBar(
      backgroundColor: Color(0xFF7a6fe9),
      toolbarHeight: 110,
      actions: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/im_logo-removebg-preview.png'),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                title: 'Courses',
                font: 'Fredokat',
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CoursesScreen()));
                },
              ),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TheBatchScreen()));
                },
                title: 'The Batch',
                font: 'Fredokat',
              ),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                onPressed: () {

                },
                title: 'Blog',
                font: 'Fredokat',
              ),
              const SizedBox(
                width: 35,
              ),

              HoverContainer(
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hoverDecoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                height: 40,
                width: 140,
                child: const Center(child: Text('Get Al News')),
              )
            ],
          ),
        ),
      ],
    );
  }
}
