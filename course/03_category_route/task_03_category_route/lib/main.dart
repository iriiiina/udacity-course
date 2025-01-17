// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// You can read about packages here: https://flutter.dev/using-packages/
import 'package:flutter/material.dart';

// DONE: Import the CategoryRoute widget
import 'package:task_03_category_route/category_route.dart';

/// The function that is called when main.dart is run.
void main() {
  runApp(const UnitConverterApp());
}

/// This widget is the root of our application.
///
/// The first screen we see is a list [Categories].
class UnitConverterApp extends StatelessWidget {
  const UnitConverterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      // DONE: Instead of pointing to exactly 1 Category widget,
      // our home should now point to an instance of the CategoryRoute widget.
      home: CategoryRoute(),
    );
  }
}
