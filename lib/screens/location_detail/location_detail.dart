import 'package:Fluttercrashcourse/screens/location_detail/text_section.dart';
import 'package:Fluttercrashcourse/widgets/location_tile.dart';
import 'package:flutter/material.dart';
import '../../widgets/image_banner.dart';
import '../../models/location.dart';
import 'location_detail.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          location.name,
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ImageBanner(assetPath: location.imagePath),
                Padding(padding: EdgeInsets.symmetric(vertical: 20.0),
                     child: LocationTile(location: location,))
          ]..addAll(textSections(location)),
        ),
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
