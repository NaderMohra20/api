import 'package:e_commerc_api/Airprogecrs/ailline_widget.dart';
import 'package:e_commerc_api/Airprogecrs/aillines_provider.dart';
import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:provider/provider.dart';

class AillinesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
        ),
        body: Consumer<AillinesProvider>(builder: ((context, provider, x) {
          return LazyLoadScrollView(
            onEndOfPage: () {
              provider.getNewPassenger();
            },
            child: ListView.builder(
                itemCount: provider.isloading
                    ? provider.passengers.length + 1
                    : provider.passengers.length,
                itemBuilder: (context, index) {
                  if (index == provider.passengers.length) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return AillinesWidget(provider.passengers[index]);
                }),
          );
        })));
  }
}
