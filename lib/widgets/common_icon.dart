
import 'dart:ui';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonIcons extends StatelessWidget{
  final Key? key;
  final double? size;
  final double? fill;
  final double? weight;
  final IconData? icon;
  final double? grade;
  final double? opticalSize;
  final Color? backgroundColor;
  final Color? textColor;
  final double? smallSize;
  final double? largeSize;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final   AlignmentGeometry? alignment;
  final Offset? offset;
  final Widget? label;
  final bool isLabelVisible = true;
  final Widget? child;
  final Color? color;
  final Color? coluar;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final double? width;
  final double? height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;


  CommonIcons({ this.key, this.size, this.fill, this.weight, this.grade, this.opticalSize, this.color, this.icon, this.backgroundColor, this.textColor, this.smallSize, this.largeSize, this.textStyle, this.padding, this.alignment, this.offset, this.label, this.child, this.decoration, this.foregroundDecoration, this.width, this.height, this.constraints, this.margin, this.transform, this.coluar});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height?? 20,
      width: width?? 20,
      color: coluar?? Colors.grey,
      child: Icon(icon?? Icons.add,
        color:color?? Colors.yellow,
        fill: fill,
        weight: weight,
      ),
    );
  }
}