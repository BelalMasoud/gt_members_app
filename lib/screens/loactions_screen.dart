import 'package:flutter/material.dart';

class LocationsScreen extends StatelessWidget {
  static const routeName = "/locations-screen";
  const LocationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: 250,
          child: ListWheelScrollView(children: [
            GridTile(
              child: Image.asset(
                "assets/cairo.png",
                fit: BoxFit.fill,
              ),
              footer: GridTileBar(
                backgroundColor: Color.fromRGBO(0, 150, 135, 0.5),
                title: Text("Cairo - new cairo"),
              ),
            ),
            GridTile(
              child: Image.asset(
                "assets/alexandria.png",
                fit: BoxFit.fill,
              ),
              footer: GridTileBar(
                backgroundColor: Color.fromRGBO(0, 150, 135, 0.5),
                title: Text("Alexandria - smouha"),
              ),
            ),
            GridTile(
              child: Image.asset(
                "assets/cairo.png",
                fit: BoxFit.fill,
              ),
              footer: GridTileBar(
                backgroundColor: Color.fromRGBO(0, 150, 135, 0.5),
                title: Text("Hurghada - El Gouna"),
              ),
            ),
            GridTile(
              child: Image.asset(
                "assets/cairo.png",
                fit: BoxFit.fill,
              ),
              footer: GridTileBar(
                backgroundColor: Color.fromRGBO(0, 150, 135, 0.5),
                title: Text("Istanbul - Merter"),
              ),
            ),
            GridTile(
              child: Image.asset(
                "assets/cairo.png",
                fit: BoxFit.fill,
              ),
              footer: GridTileBar(
                backgroundColor: Color.fromRGBO(0, 150, 135, 0.5),
                title: Text("Dubai - Dubai Marina"),
              ),
            ),
            GridTile(
              child: Image.asset(
                "assets/cairo.png",
                fit: BoxFit.fill,
              ),
              footer: GridTileBar(
                backgroundColor: Color.fromRGBO(0, 150, 135, 0.5),
                title: Text("Kuala Lumpur - KLCC"),
              ),
            ),
            GridTile(
              child: Image.asset(
                "assets/cairo.png",
                fit: BoxFit.fill,
              ),
              footer: GridTileBar(
                backgroundColor: Color.fromRGBO(0, 150, 135, 0.5),
                title: Text("Beirut - Mathaf"),
              ),
            ),
          ], itemExtent: 150),
        ),
      ),
    );
  }
}
