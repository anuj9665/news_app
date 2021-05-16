import 'package:flutter/material.dart';
import 'package:news_app/view/side_navigation.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: SideNavigation(),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            NewsBlock(),
            NewsBlock(),
            NewsBlock(),
            NewsBlock(),
            NewsBlock(),
            NewsBlock(),
            NewsBlock(),
            NewsBlock(),
            NewsBlock(),
          ],
        ),
      ),
    );
  }
}

class NewsBlock extends StatelessWidget {
  const NewsBlock({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      height: size.height*0.2,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width*0.055),
            height: size.height*0.152,
            width: size.width*0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage('assets/a1.jpg'), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Container(
                  height: size.height*0.124,
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
                      Container(
                        margin: EdgeInsets.only(bottom: 3.0),
                        width: size.width*0.583,
                        child: Text(
                          "An Observatory ebugger and profiler on Ad profier and profiler on Ad profier and profiler on Ad profier and profiler on Ad profiler on Android SDK built for abc xervatd",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 13.0),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: size.height*0.042,
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
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ],
                        ),
                        Container(
                          width: size.width*0.22,
                          height: 16.0,
                          color: Theme.of(context).accentColor,
                          child: Center(
                            child: Text(
                              "Sports",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.bookmark_border_outlined,
                          size: 22,
                        )
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
