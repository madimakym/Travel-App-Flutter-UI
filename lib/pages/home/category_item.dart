// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

import '../../widgets/custom_arguments.dart';

class CategoryItem extends StatelessWidget {
  String title;
  String subTitle;
  String image;
  var route;
  var params;

  CategoryItem(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.image,
      this.params,
      this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5, right: 10.0, bottom: 5),
        child: InkWell(
            onTap: () => Navigator.pushNamed(context, route,
                arguments: CustomArguments(title, params: params)),
            child: Hero(
              tag: image,
              child: Stack(children: [
                Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'lib/assets/img/$image',
                        fit: BoxFit.cover,
                        width: 150,
                        height: 300,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 3,
                              offset: const Offset(2, 2))
                        ])),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                      width: 150,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        gradient: const LinearGradient(
                          begin: Alignment(10, 0),
                          end: Alignment(10, 2),
                          colors: [Colors.transparent, Colors.black],
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: title,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600))
                                    ])),
                                Row(children: [
                                  const Icon(Icons.location_on_sharp,
                                      color: Colors.white, size: 14.0),
                                  Text(subTitle,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400))
                                ])
                              ]))),
                )
              ]),
            )));
  }
}
