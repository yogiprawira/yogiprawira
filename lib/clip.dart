import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

nanas() {
  String video = "https://www.youtube.com/watch?v=NT18bhJIlnE";
  launch(video);
}
