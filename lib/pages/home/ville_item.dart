import 'package:flutter/material.dart';
import 'package:travel_ui_app/widgets/custom_arguments.dart';

// ignore: must_be_immutable
class VilleItem extends StatelessWidget {
  var route;
  String title;
  String image;
  var params;

  VilleItem(
      {Key? key,
      required this.title,
      required this.image,
      required this.params,
      required this.route})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 5, right: 25.0, bottom: 5),
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, route,
              arguments: CustomArguments(title, params: params)),
          child: Column(
            children: [
              Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset('lib/assets/img/$image',
                            fit: BoxFit.cover)),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 3,
                            offset: const Offset(2, 2))
                      ])),
              const SizedBox(height: 8),
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600))
            ],
          ),
        ));
  }
}
