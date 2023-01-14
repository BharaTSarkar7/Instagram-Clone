import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/add_post_screen.dart';
import 'package:velocity_x/velocity_x.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  "home".text.xl.makeCentered(),
  "search".text.xl.makeCentered(),
  const AddPostScreen(),
  "fav".text.xl.makeCentered(),
  "pro".text.xl.makeCentered(),
];
