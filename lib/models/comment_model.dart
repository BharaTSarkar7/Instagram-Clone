import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  final String text;
  final String username;
  final String uid;
  final String profilePic;
  final String commentId;
  final DateTime datePublished;

  Comment({
    required this.text,
    required this.username,
    required this.uid,
    required this.profilePic,
    required this.commentId,
    required this.datePublished,
  });

  static Comment fromSnap(DocumentSnapshot snap) {
    var snaphot = snap.data() as Map<String, dynamic>;

    return Comment(
        text: snaphot["text"],
        username: snaphot["username"],
        uid: snaphot["uid"],
        profilePic: snaphot["profilePic"],
        commentId: snaphot["commentId"],
        datePublished: snaphot["datePublished"]);
  }

  Map<String, dynamic> toJson() => {
        "text": text,
        "username": username,
        "uid": uid,
        "profilePic": profilePic,
        "commentId": commentId,
        "datePublished": datePublished,
      };
}
