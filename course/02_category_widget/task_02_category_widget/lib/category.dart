// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.

const _height = 100.0;
const _borderRadius = _height / 2;

class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // DONE: You'll need the name, color, and iconLocation from main.dart

  const Category({
    Key? key,
    required this.name,
    required this.color,
    required this.icon,
  }) : super(key: key);

  final String name;
  final Color color;
  final IconData icon;

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://api.flutter.dev/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // DONE: Build the custom widget here, referring to the Specs.
    return InkWell(
      onTap: () {
        print('I was tapped!');
      },
      splashColor: color,
      highlightColor: color,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      borderRadius: BorderRadius.circular(_borderRadius),
      child: Container(
        height: _height,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.black),
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                icon,
                size: 60.0,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
