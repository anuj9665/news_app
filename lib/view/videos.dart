import 'package:flutter/material.dart';
import 'package:news_app/view/side_navigation.dart';
import 'package:video_player/video_player.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  VideoPlayerController _controller;
  bool isPaused = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video.mp4')
      ..initialize().then((_) {
        setState(() {
          _controller.setLooping(true);
        });
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: SideNavigation(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "Videos",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isPaused = !isPaused;
                    if (isPaused) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
                child: Container(
                  height: size.height * 0.31,
                  width: size.width,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      VideoPlayer(_controller),
                      isPaused
                          ? Center(
                              child: Icon(
                                Icons.play_arrow_rounded,
                                size: 70,
                                color: Colors.white,
                              ),
                            )
                          : Text(""),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.254,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "This is the heading of the realted news another",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          height: 2.0,
                          fontSize: 13),
                    ),
                    Text(
                      "Date and Time here",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      "This ios Heading of the realted news this is another Heading of the ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      onPressed: () {},
                      disabledElevation: 3.0,
                      disabledColor: Colors.white54,
                      child: Container(
                        height: size.height * 0.044,
                        width: size.width * 0.84,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Center(
                            child: Text(
                          "Information",
                          style: TextStyle(color: Colors.black),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              VideoNewsBlock(),
              VideoNewsBlock(),
              VideoNewsBlock(),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoNewsBlock extends StatelessWidget {
  const VideoNewsBlock({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      height: size.height*0.15, 
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            height: size.height*0.102,
            width: size.width*0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/a1.jpg'), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 3.0),
                        width: size.width*0.583,
                        child: Text(
                          "Tofiled profiler on Ad profier and profiler on Ad profier and profiler on Ad prd profiler on Ad profier and profiler on Ad profier and profiler on Ad pr ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height*0.0422,
                  width: size.width*0.583,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "03-03-2021",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                      Container(
                        width: size.width*0.25,
                        height: 16.0,
                        color: Theme.of(context).accentColor,
                        child: Center(
                          child: Text(
                            "Info",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
