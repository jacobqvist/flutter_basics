import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final String userItinarySummary;
  final String tourPackageName; 
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.userItinarySummary, this.tourPackageName, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, "Årre City", "assets/images/Aarre.jpg", "From 10PM - 11AM", "AWESOME PACK", [
        LocationFact("Summary",
            "Shålålå what is up in the app. Jacob Jensen bla bla bla. What up dog?"),
        LocationFact("Summary",
            "Shålålå what is up in the app. Jacob Jensen bla bla bla. What up dog?"),
      ]),
      Location(2, "Bearland", "assets/images/bear.jpg", "From 10PM - 11AM", "AWESOME PACK", [
        LocationFact("Summary",
            "Shålålå what is up in the app. Jacob Jensen bla bla bla. What up dog?"),
        LocationFact("Summary",
            "Shålålå what is up in the app. Jacob Jensen bla bla bla. What up dog?"),
      ]),
      Location(3, "Aarhus City", "assets/images/Aarhus.jpg", "From 10PM - 11AM", "AWESOME PACK", [
        LocationFact("Summary",
            "Shålålå what is up in the app. Jacob Jensen bla bla bla. What up dog?"),
        LocationFact("Summary",
            "Shålålå what is up in the app. Jacob Jensen bla bla bla. What up dog?"),
      ])
    ];
  }

  static Location fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
  }
}
