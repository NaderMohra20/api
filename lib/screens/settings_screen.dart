import 'package:e_commerc_api/app_router.dart';
import 'package:e_commerc_api/screens/about_the_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/appbar_icons.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  sendMessageByWhatsapp(String phone, String message) {
    String url = "whatsapp://send?phone=$phone&text=${Uri.encodeFull(message)}";
    launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 4,
        title: Text('Settings'.tr()),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                AppBarIcons(
                  function: () {
                    if (context.locale.toString() == "ar") {
                      context.setLocale(Locale("en"));
                    } else {
                      context.setLocale(Locale("ar"));
                    }
                  },
                  icon: Icons.language,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "English".tr(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                AppBarIcons(
                  function: () {
                    AppRouter.NavigateToWidget(AboutScreen());
                  },
                  icon: Icons.launch,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "About the app".tr(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                AppBarIcons(
                  function: () {
                    sendMessageByWhatsapp("972592925383", "");
                  },
                  icon: Icons.whatsapp,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Connect with us".tr(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
