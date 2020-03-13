import 'package:flutter/material.dart';

class OrganizingMemberTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
