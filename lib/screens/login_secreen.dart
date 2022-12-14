// import 'package:e_commerc_api/app_router.dart';
// import 'package:e_commerc_api/consts/global_colors.dart';

// import 'package:e_commerc_api/screens/sign_in_screen.dart';
// import 'package:e_commerc_api/widgets/text_field_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class LogInScreen extends StatefulWidget {
//   const LogInScreen({Key? key}) : super(key: key);

//   @override
//   State<LogInScreen> createState() => _LogInScreenState();
// }

// class _LogInScreenState extends State<LogInScreen> {
//   bool scureText = true;
//   GlobalKey<FormState> loginKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Log In'),
//       ),
//       body: Consumer<AuthProvider>(builder: (context, provider, x) {
//         return Container(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           height: double.infinity,
//           child: SingleChildScrollView(
//             child: Form(
//               key: loginKey,
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height / 5,
//                   ),
//                   MyTextField(
//                     controller: provider.emailController,
//                     validator: (value) => provider.emailValiadation(value!),
//                     obscureText: false,
//                     keyboardType: TextInputType.emailAddress,
//                     labelText: 'E-mail',
//                     hintText: 'Enter email',
//                     prefixIcon: Icons.email,
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height / 20,
//                   ),
//                   MyTextField(
//                     controller: provider.passwordController,
//                     validator: (value) => provider.passwordValiadation(value),
//                     keyboardType: TextInputType.visiblePassword,
//                     obscureText: scureText,
//                     labelText: 'Password',
//                     hintText: 'Enter password',
//                     prefixIcon: Icons.password,
//                     suffixIcon: IconButton(
//                       onPressed: () {
//                         scureText = !scureText;
//                         setState(() {});
//                       },
//                       icon: Icon(
//                         scureText ? Icons.visibility : Icons.visibility_off,
//                         color: lightIconsColor,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height / 12,
//                   ),
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                         height: MediaQuery.of(context).size.height / 10,
//                         width: MediaQuery.of(context).size.width / 1.2,
//                         decoration: BoxDecoration(
//                             color: lightIconsColor,
//                             borderRadius: BorderRadius.circular(60)),
//                         child: Center(
//                             child: Text(
//                           "Log In",
//                           style: TextStyle(
//                               color: lightScaffoldColor,
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold),
//                         ))),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       AppRouter.NavigateToWidget(SignINScreen());
//                     },
//                     child: Container(
//                         height: MediaQuery.of(context).size.height / 10,
//                         width: MediaQuery.of(context).size.width / 1.2,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(60)),
//                         child: Center(
//                             child: Text(
//                           "Sign In",
//                           style: TextStyle(
//                               color: lightIconsColor,
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold),
//                         ))),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }
