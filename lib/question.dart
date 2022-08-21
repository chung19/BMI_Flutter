import 'package:flutter/material.dart';

class Question {
  String questionText = '';
  bool answer = true;

  Question(String s, bool bool, {String? q, bool? a}) {
    questionText = q!;
    answer = a!;
  }
}
