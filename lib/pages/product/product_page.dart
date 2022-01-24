// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:travel_ui_app/utils/colors.dart';
import 'package:flutter_html/flutter_html.dart';

class ProductPage extends StatefulWidget {
  var params;

  ProductPage({Key? key, required this.params}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.whiteColor.withOpacity(0.8),
                  child: IconButton(
                      icon: const Icon(Icons.favorite,
                          color: AppColors.primaryColor),
                      onPressed: () => {})))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.params['visual'],
              child: Image.asset(
                'lib/assets/img/${widget.params['visual']}',
                fit: BoxFit.fill,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(
                    top: 20, right: 10, bottom: 5, left: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(widget.params['libelle'],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            const SizedBox(height: 10),
                                   if ((widget.params['region'] != null) &&
                                widget.params['region'] != '')
                            Row(children: [
                              Row(children: [
                                const Icon(Icons.location_on,
                                    color: AppColors.primaryColor, size: 15),
                               
                                Text(widget.params['region'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.primaryColor))
                              ]),
                              const Spacer(),
                              Row(children: const [
                                Icon(Icons.star,
                                    color: AppColors.primaryColor, size: 16),
                                Icon(Icons.star,
                                    color: AppColors.primaryColor, size: 16),
                                Icon(Icons.star,
                                    color: AppColors.primaryColor, size: 16),
                                Icon(Icons.star,
                                    color: AppColors.primaryColor, size: 16)
                              ])
                            ])
                          ])),
                      SizedBox(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            if (widget.params['description'] != null)
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Divider(),
                                    Html(data: widget.params['description']),
                                  ]),
                            if ((widget.params['phone'] != null) &&
                                widget.params['phone'] != '')
                              itemTitle(widget.params['phone'], Icons.phone),
                            if ((widget.params['mail'] != null) &&
                                widget.params['mail'] != '')
                              itemTitle(widget.params['mail'], Icons.mail),
                            if ((widget.params['web'] != null) &&
                                widget.params['web'] != '')
                              itemTitle(widget.params['web'], Icons.web_sharp),
                            if ((widget.params['address'] != null) &&
                                widget.params['address'] != '')
                              itemTitle(
                                  widget.params['address'], Icons.location_on)
                          ]))
                    ])),
          ],
        ),
      ),
    );
  }

  Widget itemTitle(title, icon) {
    return Card(
        elevation: 0,
        child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            leading: Container(
                decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.circular(12)),
                width: 40,
                height: 40,
                child: Icon(icon, color: AppColors.blackColor)),
            title: Text(title ?? "")));
  }
}
