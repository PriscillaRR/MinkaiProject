import 'package:flutter/material.dart';

class Cube {
  double length;
  int id;
  Cube({required this.length, required this.id});

  double getLength() {
    return length;
  }

  int getId() {
    return id;
  }
}
