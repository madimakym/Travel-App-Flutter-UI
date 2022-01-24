// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable
import 'package:flutter/material.dart';
import 'package:travel_ui_app/utils/colors.dart';
import 'package:travel_ui_app/widgets/custom_arguments.dart';

class CustomTitle extends StatelessWidget {
  String title;
  var route;
  CustomTitle({Key? key, required this.title, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35.0, bottom: 2, left: 10, right: 10),
      child: Row(children: [
        Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        const Spacer(),
        if (route != '')
          GestureDetector(
            child: Row(
              children: const [
                Text("Voir plus",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor)),
                Icon(Icons.arrow_right, color: AppColors.blackColor)
              ],
            ),
                      onTap: () => {},
          )
      ]),
    );
  }
}
