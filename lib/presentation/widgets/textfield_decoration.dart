import 'package:flutter/material.dart';

InputDecoration textfielDecoration(String hintStyle) {
  return InputDecoration(
    filled: true,
    border: InputBorder.none,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green.shade900, width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green.shade900, width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green.shade900, width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green.shade900, width: 1),
      borderRadius: BorderRadius.circular(12),
    ),
    hintText: hintStyle,
    fillColor: Colors.grey.shade100,
    hintStyle: const TextStyle(color: Colors.black),
  );
}
