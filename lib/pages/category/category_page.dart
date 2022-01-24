import 'package:flutter/material.dart';
import 'package:travel_ui_app/utils/colors.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    // Size screenSizes = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 10.0, left: 10, right: 10, bottom: 25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Catégories',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 28,
                                letterSpacing: 0.2)),
                        SizedBox(height: 5),
                        Text('Guide touristique pour visiter le Congo',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: 0.2))
                      ],
                    ),
                    const SizedBox(height: 5),
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
                  ],
                ),
                const SizedBox(height: 30),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    SizedBox(
                      height: 150,
                      width: (deviceInfo.size.width / 2) - 15,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage(
                                    "lib/assets/img/17620172_1302359839817136_4423533994170104967_o.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Container(
                              height: 150,
                              width: (deviceInfo.size.width / 2) - 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.black.withOpacity(0.1),
                              ),
                            ),
                          ),
                          const Positioned.fill(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "SAVOURER",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: (deviceInfo.size.width / 2) - 15,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image:
                                    AssetImage("lib/assets/img/147836435.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Container(
                              height: 150,
                              width: (deviceInfo.size.width / 2) - 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black.withOpacity(0.1)),
                            ),
                          ),
                          const Positioned.fill(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "SÉJOURNER",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: (deviceInfo.size.width / 2) - 15,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage("lib/assets/img/sante.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: 150,
                              width: (deviceInfo.size.width / 2) - 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black.withOpacity(0.1)),
                            ),
                          ),
                          const Positioned.fill(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "SANTÉ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: (deviceInfo.size.width / 2) - 15,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage(
                                    "lib/assets/img/1619969983619-geant-casino-baudouin-mouanda1-640x320-1474542624.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: 150,
                              width: (deviceInfo.size.width / 2) - 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black.withOpacity(0.1)),
                            ),
                          ),
                          const Positioned.fill(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "SHOPPING",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: (deviceInfo.size.width / 2) - 15,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage(
                                    "lib/assets/img/17620172_1302359839817136_4423533994170104967_o.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: 150,
                              width: (deviceInfo.size.width / 2) - 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black.withOpacity(0.1)),
                            ),
                          ),
                          const Positioned.fill(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "LOISIR",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                          SizedBox(
                            height: 150,
                            width: (deviceInfo.size.width / 2) - 15,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "lib/assets/img/main-gymnase-makelekele.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    height: 150,
                                    width: (deviceInfo.size.width / 2) - 10,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.black.withOpacity(0.1)),
                                  ),
                                ),
                                const Positioned.fill(
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SPORT",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
