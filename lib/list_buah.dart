import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'clip.dart';

class Myapp extends StatelessWidget {
  var boxShadow;

  get decoration => null;

  @override
  Widget build(BuildContext context) {
    var init;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey[400],
        title: new Text("LIST BUAH",
            style: TextStyle(color: Colors.white, fontSize: 30.0)),
        leading: new IconButton(
          icon: new Icon(Icons.video_call_sharp, color: Colors.white),

          // new Text("Video",
          // style: TextStyle(color: Colors.white, fontSize: 12.0));
          //Menangani kejadian saat menu home diklik
          onPressed: () {
            nanas();
          },
        ),
      ),
      // ignore: unnecessary_new
      body: new Container(
        color: Colors.grey[50],
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.0,
                            spreadRadius: 4.0,
                          )
                        ],
                      ),
                      child: GestureDetector(
                        child: Row(
                          children: <Widget>[
                            Material(
                              elevation: double.infinity,
                              // shape: BoxShape.values,
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  AlertDialog alert = AlertDialog(
                                    // content: Text("Bunga"),
                                    content: Image(
                                      width: 400.0,
                                      height: 250.0,
                                      image: AssetImage(
                                          'assets/images/durian1.jpg'),
                                    ),
                                  );
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return alert;
                                    },
                                  );
                                },
                                child: ClipOval(
                                  // handle your image tap here
                                  child: new Image(
                                      width: 100.0,
                                      height: 100.0,
                                      image: AssetImage(
                                          'assets/images/durian1.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 8.0),
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      margin: EdgeInsets.all(5),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[200],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 4,
                            blurRadius: 3,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("BUAH DURIAN",
                              style: TextStyle(
                                  color: Colors.lightBlue, fontSize: 24.0)),
                          Text(
                            "buah durian terdapat Vitamin C dan thiamin ",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 0, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.0,
                            spreadRadius: 4.0,
                          )
                        ],
                      ),
                      child: GestureDetector(
                        child: Row(
                          children: <Widget>[
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  AlertDialog alert = AlertDialog(
                                    // content: Text("Bunga"),
                                    content: Image(
                                      width: 400.0,
                                      height: 250.0,
                                      image: AssetImage(
                                          'assets/images/nanas1.jpg'),
                                    ),
                                  );
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return alert;
                                    },
                                  );
                                  // nanas();
                                },
                                child: ClipOval(
                                  // handle your image tap here
                                  child: new Image(
                                      width: 100.0,
                                      height: 100.0,
                                      image: AssetImage(
                                          'assets/images/nanas1.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 8.0),
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      margin: EdgeInsets.all(5),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[200],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 4,
                            blurRadius: 3,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("BUAH NANAS",
                              style: TextStyle(
                                  color: Colors.lightBlue, fontSize: 24.0)),
                          Text(
                            "150gram nanas mampu mencukupi vitamin C harian",
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
