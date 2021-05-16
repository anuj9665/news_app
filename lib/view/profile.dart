import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/view/side_navigation.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      drawer: SideNavigation(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height*0.287,
                width: double.infinity,
                color: Colors.grey.withOpacity(0.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: size.height*0.085,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/a1.jpg"),
                        radius: size.height*0.081,
                      ),
                    ),
                    Text(
                      "Dinesh Yaduvanshi",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      height: size.height*0.034,
                      width: size.width*0.195,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                height:size.height*0.574,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      TextFormField(
                        style: TextStyle(fontSize: 12),
                        maxLines: 2,
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey, height: 1.0),
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 200),
                            ),isDense: true),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Pincode",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      TextFormField(
                        style: TextStyle(fontSize: 12),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(6),],
                        decoration: InputDecoration(
                          
                            labelStyle: TextStyle(color: Colors.grey, height: 1.0),
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 200),
                            ),
                            isDense: true),
                      ),
                      SizedBox(
                        height: size.height*0.034,
                      ),

                      Text(
                        "Date of Birth",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.datetime,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey, height: 1.0),
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 200),
                            ),isDense: true),
                      ),
                      SizedBox(
                        height: size.height*0.034,
                      ),
                      Text(
                        "Gender",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey, height: 1.0),
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 200),
                            ),
                            isDense: true),
                          
                      ),
                      SizedBox(
                        height: size.height*0.034,
                      ),
                      Text(
                        "Whatsapp",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey, height: 1.0),
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 200),
                            ),
                            isDense: true),
                          
                      ),
                      SizedBox(
                        height: size.height*0.034,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 12),
                        
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.grey, height: 1.0),
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 200),
                            ),
                            isDense: true),
                          
                      ),
                      SizedBox(
                        height: size.height*0.034,
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
