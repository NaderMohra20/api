import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // elevation: 4,
          title: Text('About the app'.tr()),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Center(
              child: Text(
            """For over a decade, the App Store has proved to be a safe and trusted place to discover and download apps. But the App Store is more than just a storefront — it’s an innovative destination focused on bringing you amazing experiences. And a big part of those experiences is ensuring that the apps we offer are held to the highest standards for privacy, security, and content. Because we offer nearly two million apps — and we want you to feel good about using every single one of them""",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
        ));
  }
}
