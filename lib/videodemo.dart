import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoDemo extends StatefulWidget {
  const VideoDemo({Key? key}) : super(key: key);

  @override
  _VideoDemoState createState() => _VideoDemoState();
}

class _VideoDemoState extends State<VideoDemo> {
  late VideoPlayerController _controller;
  bool isplaying = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _controller = VideoPlayerController.asset("assets/wp.mp4");
    _controller = VideoPlayerController.network(
        "https://vmlane.com/ios/raw/MobileDemo.mp4");

    initData();
  }

  initData() async {
    await _controller.initialize();
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: Stack(
              children: [
                GestureDetector(
                  child: VideoPlayer(_controller),
                  onTap: () {
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                      setState(() {
                        isplaying = false;
                      });
                    } else {
                      _controller.play();
                      setState(() {
                        isplaying = true;
                      });
                    }
                  },
                ),
                if (!isplaying) ...[
                  Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.red,
                      size: 100,
                    ),
                  ),
                ],
                Align(
                    alignment: Alignment.bottomCenter,
                    child: LinearProgressIndicator(
                      value: 0.5,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
