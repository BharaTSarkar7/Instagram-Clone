import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/feed_screen.dart';
import 'package:instagram_clone/utilis/colors.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Comments",
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: primaryColor,
            ),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FeedScreen(),
              ),
            ),
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 5),
              onPressed: () {},
              icon: const Icon(Icons.send),
            )
          ],
        ),
      ),
    );
  }
}
