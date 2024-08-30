import 'package:flutter/material.dart';

Widget imageButton({int? id, String? title, String? image}) {
  return Column(
    children: [
      (image!.isEmpty)
          ? const SizedBox()
          : Image.asset(image, height: 60, width: 60),
      Text(title!),
    ],
  );
}
