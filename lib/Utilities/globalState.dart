import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/Screens/addPostsScreen.dart';
import 'package:flutter_instagram_app/Screens/feedScreen.dart';
import 'package:flutter_instagram_app/Screens/profile_screen.dart';
import '../Screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notifications'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
