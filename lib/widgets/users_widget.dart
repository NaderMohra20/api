import 'package:e_commerc_api/consts/global_colors.dart';
import 'package:e_commerc_api/models/users_model.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

class UsersWidget extends StatelessWidget {
  UsersModel usersModel;
  UsersWidget(this.usersModel);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListTile(
      leading: FancyShimmerImage(
        height: size.width * 0.15,
        width: size.width * 0.15,
        errorWidget: const Icon(
          IconlyBold.danger,
          color: Colors.red,
          size: 28,
        ),
        imageUrl: usersModel.avatar.toString(),
        boxFit: BoxFit.fill,
      ),
      title: Text(usersModel.name.toString()),
      subtitle: Text(usersModel.email.toString()),
      trailing: Text(
        usersModel.role.toString(),
        style: TextStyle(
          color: lightIconsColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
