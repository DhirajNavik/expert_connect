import 'package:flutter/material.dart';

class SettingsModel {
  final String icon;
  final String title;
  final VoidCallback? onTap;

  const SettingsModel({required this.icon, required this.title, this.onTap});
}
