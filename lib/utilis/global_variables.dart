import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/add_post_screen.dart';
import 'package:instagram_clone/Screen/feed_screen.dart';
import 'package:instagram_clone/Screen/search_screen.dart';
import 'package:velocity_x/velocity_x.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  "fav".text.xl.makeCentered(),
  "pro".text.xl.makeCentered(),
];
