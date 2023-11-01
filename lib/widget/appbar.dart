import 'package:flutter/material.dart';

AppBar appBarMethod() {
  return AppBar(
    centerTitle: true,
    title: const Text("Hello Sammy"),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.notification_add)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
    ],
  );
}
