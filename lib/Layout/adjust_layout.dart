import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/Utilities/colors.dart';
import 'package:flutter_instagram_app/Utilities/screen_size.dart';
import 'package:flutter_instagram_app/provider/user_provider.dart';
import 'package:provider/provider.dart';

import '../Models/user.dart';

class AdjustLayout extends StatefulWidget {
  final Widget mobileDisplay;
  final Widget webDisplay;
  const AdjustLayout({
    Key? key,
    required this.mobileDisplay,
    required this.webDisplay,
  }) : super(key: key);

  @override
  State<AdjustLayout> createState() => _AdjustLayoutState();
}

class _AdjustLayoutState extends State<AdjustLayout> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider _userProvider =
        Provider.of<UserProvider>(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > maxWebScreenSize) {
        return widget.webDisplay;
      }
      return widget.mobileDisplay;
    });
  }
}
