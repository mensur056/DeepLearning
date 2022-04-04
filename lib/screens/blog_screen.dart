import 'dart:io';

import 'package:deep_learning/screens/the_batch_screen.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import '../widgets/app_bar_titles.dart';
import 'courses_screen.dart';
import 'home_page.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  VideoPlayerController? _videoPlayerController;
  File? _video;
  final picker = ImagePicker();

  _pickVideo() async {
    final video = await picker.getVideo(source: ImageSource.gallery);
    _video = File(video!.path);
    _videoPlayerController = VideoPlayerController.file(_video!)
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController!.play();
      });
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
                if (_video != null)
                  _videoPlayerController!.value.isInitialized
                      ? AspectRatio(
                          aspectRatio:
                              _videoPlayerController!.value.aspectRatio,
                          child: VideoPlayer(_videoPlayerController!),
                        )
                      : Container()
                else
                  const Text('Click on pick video to selected video'),
                RaisedButton(
                  onPressed: () {
                    _pickVideo();
                  },
                  child: const Text('Pick video from gallery'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    String imageName = 'images/deepLearningLogo.png';
    String courseTitle = 'Courses';
    String theBatchTitle = 'The Batch';
    String eventsTitle = 'Events';
    String blogTitle = 'Bolg';
    String companyTitle = 'Company';
    String font = 'Fredokat';
    String getBtnText = 'Get Al News';
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 110,
      actions: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Image.asset(imageName),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              ),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                title: courseTitle,
                font: font,
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
                title: theBatchTitle,
                font: font,
              ),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                onPressed: () {},
                title: blogTitle,
                font: font,
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
                title: eventsTitle,
                font: font,
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
                title: companyTitle,
                font: font,
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
                child: Center(child: Text(getBtnText)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
