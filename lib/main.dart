import 'dart:html';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:loginoi/list_buah.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MaterialApp(
    home: new Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}
