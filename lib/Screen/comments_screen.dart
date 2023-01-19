import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/feed_screen.dart';
import 'package:instagram_clone/utilis/colors.dart';

import '../widgets/comment_card.dart';

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
        bottomNavigationBar: Container(
          height: kToolbarHeight,
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          padding: const EdgeInsets.only(left: 16, right: 8),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1668650870010-0a81e62a54cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8OXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                radius: 18,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Comment as username',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: const Text(
                    'Post',
                    style: TextStyle(
                      color: blueColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: CommentCard(),
      ),
    );
  }
}
