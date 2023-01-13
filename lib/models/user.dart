import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String bio;
  final List followers;
  final List following;

  const User({
    required this.email,
    required this.uid,
    required this.photoUrl,
    required this.username,
    required this.bio,
    required this.followers,
    required this.following,
  });

  User copyWith({
    String? email,
    String? uid,
    String? photoUrl,
    String? username,
    String? bio,
    List? followers,
    List? following,
  }) {
    return User(
      email: email ?? this.email,
      uid: uid ?? this.uid,
      photoUrl: photoUrl ?? this.photoUrl,
      username: username ?? this.username,
      bio: bio ?? this.bio,
      followers: followers ?? this.followers,
      following: following ?? this.following,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'uid': uid,
      'photoUrl': photoUrl,
      'username': username,
      'bio': bio,
      'followers': followers,
      'following': following,
    };
  }

  Map<String, dynamic> toJason() => {
        'email': email,
        'uid': uid,
        'photoUrl': photoUrl,
        'username': username,
        'bio': bio,
        'followers': followers,
        'following': following,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      username: snapshot['username'],
      uid: snapshot['uid'],
      email: snapshot['email'],
      photoUrl: snapshot['photoUrl'],
      bio: snapshot['bio'],
      followers: snapshot['followers'],
      following: snapshot['following'],
    );
  }

  // factory User.fromMap(Map<String, dynamic> map) {
  //   return User(
  //     email: map['email'] as String,
  //     uid: map['uid'] as String,
  //     photoUrl: map['photoUrl'] as String,
  //     username: map['username'] as String,
  //     bio: map['bio'] as String,
  //     followers: List.from((map['followers'] as List)),
  //     following: List.from(
  //       (map['following'] as List),
  //     ),
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory User.fromJson(String source) =>
  //     User.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() {
  //   return 'User(email: $email, uid: $uid, photoUrl: $photoUrl, username: $username, bio: $bio, followers: $followers, following: $following)';
  // }

  // @override
  // bool operator ==(covariant User other) {
  //   if (identical(this, other)) return true;

  //   return other.email == email &&
  //       other.uid == uid &&
  //       other.photoUrl == photoUrl &&
  //       other.username == username &&
  //       other.bio == bio &&
  //       listEquals(other.followers, followers) &&
  //       listEquals(other.following, following);
  // }

  // @override
  // int get hashCode {
  //   return email.hashCode ^
  //       uid.hashCode ^
  //       photoUrl.hashCode ^
  //       username.hashCode ^
  //       bio.hashCode ^
  //       followers.hashCode ^
  //       following.hashCode;
  // }
}
