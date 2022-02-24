import 'package:flutter/material.dart';

class NavbarItem {
  final String title;
  final VoidCallback onPressed;

  const NavbarItem({required this.title, required this.onPressed});
}
