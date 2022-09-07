// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:store_api_flutter_course/app_router.dart';

// class AuthHelper {
//   AuthHelper._();
//   static AuthHelper authHelper = AuthHelper._();
//   static FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   Future<UserCredential?> signIn(String email, String password) async {
//     try {
//       final credential = await firebaseAuth.signInWithEmailAndPassword(
//           email: email, password: password);
//       return credential;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         showDialog(
//             context: AppRouter.navKey.currentContext!,
//             builder: (context) {
//               return AlertDialog(
//                 content: const Text("No user found for that email."),
//                 actions: [
//                   TextButton(
//                       onPressed: () {
//                         AppRouter.popRoute();
//                       },
//                       child: const Text("ÖK"))
//                 ],
//               );
//             });
//         print('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         print('Wrong password provided for that user.');
//       }
//     }
//   }

//   Future<UserCredential?> signUp(String email, String password) async {
//     try {
//       final credential = await firebaseAuth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return credential;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         print('The account already exists for that email.');
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   // signUot() async {
//   //   await firebaseAuth.signOut();
//   //   AppRouter.NavigateToWidget(SignInView());
//   // }

//   // checkUser() async {
//   //   User? user = await firebaseAuth.currentUser;
//   //   if (user == null || !user.emailVerified) {
//   //     AppRouter.NavigateToWidgetReplacement(SignInView());
//   //   } else {
//   //     AppRouter.NavigateToWidgetReplacement(CategoriesScreen());
//   //   }
//   // }

//   // forgetpassword(String email) async {
//   //   try {
//   //     await firebaseAuth.sendPasswordResetEmail(email: email);
//   //     CustemDialog.showdialog(
//   //         "الرجاء متابعة الايميل الخاص بك لتغير كلمة المرور");
//   //   } on Exception catch (e) {
//   //     // TODO
//   //   }
//   // }
// }
