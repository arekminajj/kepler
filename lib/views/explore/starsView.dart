import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:kepler/api/api.dart';
import 'package:kepler/controllers/starsController.dart';
import 'package:kepler/models/planetData.dart';
import 'package:kepler/models/starData.dart';
import 'package:kepler/views/explore/solarSystemView.dart';
import 'package:kepler/widgets/forms/searchBar.dart';
import 'package:kepler/widgets/header/header.dart';
import 'package:kepler/widgets/progress/loading.dart';

class StarsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<StarsController>(
      init: new StarsController(),
      builder: (_) => Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(children: [
          Container(
            width: Get.width,
            height: Get.height,
<<<<<<< HEAD
<<<<<<< HEAD
            child: FutureBuilder<List<StarData>>(
              future: API.getAllStars(),
              builder: (BuildContext context, AsyncSnapshot<List<StarData>> snapshot) {
=======
            child: FutureBuilder<List<PlanetData>>(
              future: API.getAllStars(),
              builder: (BuildContext context, AsyncSnapshot<List<PlanetData>> snapshot) {
>>>>>>> parent of 9c9f4cd... Bottom Navigation Bar
=======
            child: FutureBuilder<List<PlanetData>>(
              future: API.getAllStars(),
              builder: (BuildContext context, AsyncSnapshot<List<PlanetData>> snapshot) {
>>>>>>> parent of 9c9f4cd... Bottom Navigation Bar
                switch (snapshot.connectionState) {
                  case ConnectionState.done:
                    if (snapshot.data.isNull) {
                      return Center(
                        child: Text(
                          "No stars found", //TODO: i18n
                          style: TextStyle(fontFamily: "Roboto"),
                        ),
                      );
                    }
                    return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                2), //We can dynamic change this depending on the screen size
                        physics: BouncingScrollPhysics(),
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 0) {
                            return SizedBox(
                              height: Get.height * 0.3,
                            );
                          }
                          return GestureDetector(
                            onTap: () =>
<<<<<<< HEAD
<<<<<<< HEAD
                                Get.to(SolarSystemView(star: snapshot.data[index].name)),
=======
                                Get.to(SolarSystemView(star: snapshot.data[index].star)),
>>>>>>> parent of 9c9f4cd... Bottom Navigation Bar
=======
                                Get.to(SolarSystemView(star: snapshot.data[index].star)),
>>>>>>> parent of 9c9f4cd... Bottom Navigation Bar
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: Get.width / 4,
                                height: Get.height / 4,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius:
                                      const BorderRadius.all(const Radius.circular(16.0)),
                                ),
                                child: Center(
<<<<<<< HEAD
<<<<<<< HEAD
                                  child: Text(snapshot.data[index].name),
=======
                                  child: Text(snapshot.data[index].star),
>>>>>>> parent of 9c9f4cd... Bottom Navigation Bar
=======
                                  child: Text(snapshot.data[index].star),
>>>>>>> parent of 9c9f4cd... Bottom Navigation Bar
                                ),
                              ),
                            ),
                          );
                        });
                  default:
                    return Center(child: Loading());
                }
              },
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: Get.height / 10,
              width: Get.width,
              child: Column(
                children: [
                  //Using temporary color
                  Container(
                    color: Theme.of(context).dialogBackgroundColor,
                    //TODO: Change the colour accordingly to the theme
                    child: Header(
                      "Stars", //TODO: i18n
                    ),
                  ),
                  Container(
                    color: Theme.of(context).dialogBackgroundColor,
                    //TODO: Change the colour accordingly to the theme
                    width: Get.width,
                    child: SearchBar(
                      searchFunc: (String value) {
                        _.upd();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
