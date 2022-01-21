import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/models/Post.dart';

class PostsService {

  // Future<List<Post>> fetchPhotos() async {
  //   final response = await http
  //   .get(Uri.parse('http://localhost:4000/api'));

  //   if (response.statusCode == 200) {

  //     List<Post> posts = jsonDecode(response.body);
  //     return Post.fromJson(jsonDecode(response.body));
  //   }else {
  //   // If the server did not return a 200 OK response,
  //   // then throw an exception.
  //   throw Exception('Failed to load album');
  //   }
  // }
  Future<String> fetchPosts() async {
    http.Response response = await http.get(
      Uri.parse('http://localhost:4000/api'),
      headers: {
        "Accept": "application/json",
        "Access-Control-Allow-Origin": '*'
        
      }
    );
    if (response.statusCode == 200) {
      List<dynamic> postsJson = json.decode(response.body)['data'];
      List<Post> postsList = List<Post>.from(postsJson.map((i) => Post.fromJson(i)));
      
      // List<Post> posts = jsonDecode(response.body);
      print(postsList);
      
    }
    return 'Ok';
    // final response = await http
    // .get(Uri.parse('http://localhost:4000/api'));

    // if (response.statusCode == 200) {

    //   List<Post> posts = jsonDecode(response.body);
    //   print(posts);
    //   return 'Ok';
    //   // return Post.fromJson(jsonDecode(response.body));
    // }else {
    //   return 'Nop';
    // }
  }
}
