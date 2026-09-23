import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CustomReadMore extends ReadMoreText {
  const CustomReadMore(
    super.text, {
    super.key,
    String? prefixText,
    TextStyle? prefixStyle,
    int maxLines = 2,
    super.style,
    TextStyle? suffixStyle,
  }) : super(
         preDataText: prefixText,
         preDataTextStyle: prefixStyle,
         trimLines: maxLines,
         trimMode: TrimMode.Line,
         textAlign: TextAlign.left,
         trimCollapsedText: ' Read more',
         trimExpandedText: ' Show less',
         moreStyle: suffixStyle,
         lessStyle: suffixStyle,
       );

  @override
  ReadMoreTextState createState() => CustomReadMoreState();
}

class CustomReadMoreState extends ReadMoreTextState {}
