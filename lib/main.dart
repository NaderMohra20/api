import 'package:e_commerc_api/app_router.dart';
import 'package:e_commerc_api/consts/global_colors.dart';

import 'package:e_commerc_api/provider/favorite_screen.dart';
import 'package:e_commerc_api/provider/product_providrt.dart';
import 'package:e_commerc_api/screens/BottomNavigationBar_screen.dart';
import 'package:e_commerc_api/screens/home_screen.dart';
import 'package:e_commerc_api/screens/sign_in_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'provider/card_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/langs', // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductProvidrt>(create: ((context) {
          return ProductProvidrt();
        })),
        ChangeNotifierProvider<CartProvider>(create: ((context) {
          return CartProvider();
        })),
        ChangeNotifierProvider<FavoriteProvider>(create: ((context) {
          return FavoriteProvider();
        })),
      ],
      child: MaterialApp(
        navigatorKey: AppRouter.navKey,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Flutter 3.0.4 ',
        theme: ThemeData(
          scaffoldBackgroundColor: lightScaffoldColor,
          primaryColor: lightCardColor,
          backgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: lightIconsColor,
            ),
            backgroundColor: lightScaffoldColor,
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: lightTextColor,
                fontSize: 22,
                fontWeight: FontWeight.bold),
            elevation: 0,
          ),
          iconTheme: IconThemeData(
            color: lightIconsColor,
          ),

          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.black,
            selectionColor: Colors.blue,
            // selectionHandleColor: Colors.blue,
          ),
          // textTheme: TextTheme()
          // textTheme: Theme.of(context).textTheme.apply(
          //       bodyColor: Colors.black,
          //       displayColor: Colors.black,
          //     ),
          cardColor: lightCardColor,
          brightness: Brightness.light,
          colorScheme: ThemeData().colorScheme.copyWith(
                secondary: lightIconsColor,
                brightness: Brightness.light,
              ),
        ),
        home: const BottomNavigationBarScreen(),
      ),
    );
  }
}
