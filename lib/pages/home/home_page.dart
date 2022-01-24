import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/services.dart';
import 'package:travel_ui_app/utils/colors.dart';
import 'category_item.dart';
import 'custom_title.dart';
import 'destination_item.dart';
import 'ville_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size screenSizes;

  late List _destinations = [];
  late List _villes = [];
  late List _cultures = [];
  late List _hotels = [];
  late List _restaurants = [];

  Future<String> loadJsonData() async {
    var destinationJson =
        await rootBundle.loadString('lib/assets/json/destinations.json');
    setState(() => _destinations = json.decode(destinationJson));

    var villeJson = await rootBundle.loadString('lib/assets/json/villes.json');
    setState(() => _villes = json.decode(villeJson));

    var hotelJson = await rootBundle.loadString('lib/assets/json/hotels.json');
    setState(() => _hotels = json.decode(hotelJson));

    var restaurantJson =
        await rootBundle.loadString('lib/assets/json/restaurants.json');
    setState(() => _restaurants = json.decode(restaurantJson));

    var cultureJson =
        await rootBundle.loadString('lib/assets/json/cultures.json');
    setState(() => _cultures = json.decode(cultureJson));
    return 'success';
  }

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 10, right: 10, bottom: 25.0),
              child: Row(children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Travel App',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 33,
                              letterSpacing: 0.2)),
                      SizedBox(height: 5),
                      Text('Guide touristique pour visiter le Congo',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              letterSpacing: 0.2))
                    ]),
                const Spacer(),
                SizedBox(
                    width: 50,
                    height: 50,
                    child: GestureDetector(
                      child: const CircleAvatar(
                          backgroundColor: AppColors.bgColor,
                          child: Icon(Icons.person,
                              color: Colors.black, size: 20.0)),
                      onTap: () => {},
                    )),
              ])),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () => {},
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(children: const [
                Icon(Icons.search, color: Colors.black),
                SizedBox(width: 5),
                Text("Rechercher",
                    style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 0.2,
                        color: Colors.black38))
              ]),
              decoration: BoxDecoration(
                  color: AppColors.bgColor,
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          CustomTitle(title: "Destinations populaires", route: '/destination'),
          destination(),
          CustomTitle(title: "Villes", route: ''),
          ville(),
          CustomTitle(title: "Restaurants", route: '/savourer-list'),
          category(_restaurants),
          CustomTitle(title: "Hôtels", route: '/sejourner-list'),
          category(_hotels),
          CustomTitle(
              title: "Festivals & Evènements", route: '/culture-art-list'),
          category(_cultures),
        ],
      ))),
    );
  }

  Widget destination() {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            _destinations.isEmpty ? 0 : _destinations.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int i) {
                          return DestinationItem(
                            title: _destinations[i]['libelle'],
                            subTitle: _destinations[i]['region'],
                            image: _destinations[i]['visual'],
                            params: _destinations[i],
                            route: '/product',
                          );
                        }))
              ])))
    ]);
  }

  Widget ville() {
    return Column(children: [
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 115,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _villes.isEmpty ? 0 : _villes.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int i) {
                          return VilleItem(
                              title: _villes[i]['libelle'],
                              image: _villes[i]['visual'],
                              route: '/product',
                              params: _villes[i]);
                        }))
              ])))
    ]);
  }

  Widget category(data) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data.isEmpty ? 0 : data.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int i) {
                          return CategoryItem(
                            title: data[i]['libelle'],
                            subTitle: data[i]['region'],
                            image: data[i]['visual'],
                            params: data[i],
                            route: '/product',
                          );
                        }))
              ])))
    ]);
  }
}
