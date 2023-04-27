import 'package:flutter/material.dart';

class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult(
      {required this.id,
      required this.name,
      required this.job,
      required this.created});

  factory PostResult.createdPostResult(Map<String, dynamic> json) {
    return PostResult(
        id: json['id'],
        name: json['name'],
        job: json['job'],
        created: json['createdAt']);
  }
}
