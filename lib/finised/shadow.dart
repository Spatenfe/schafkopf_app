import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SShadow extends BoxShadow {
  SShadow()
      : super(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(0, 0),
        );
}
