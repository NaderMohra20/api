import 'package:e_commerc_api/app_router.dart';
import 'package:e_commerc_api/consts/global_colors.dart';
import 'package:e_commerc_api/screens/login_secreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightIconsColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "English",
                        style: TextStyle(
                            color: lightTextColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.language_outlined))
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "get started",
                        style: TextStyle(
                            color: lightTextColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            AppRouter.NavigateWithReplacemtnToWidget(
                                const LogInScreen());
                          },
                          icon: const Icon(Icons.start))
                    ],
                  )),
            ],
          ),
        ));
    // Container(
    //   height: MediaQuery.of(context).size.height / 8,
    //   width: MediaQuery.of(context).size.width / 2,
    //   margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 500),
    //   decoration: BoxDecoration(
    //       color: Colors.white, borderRadius: BorderRadius.circular(20)),
    //   child: Text("get started"),
    // ),
  }
}
