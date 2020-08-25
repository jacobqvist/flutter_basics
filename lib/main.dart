import 'package:Fluttercrashcourse/screens/location_detail/location_detail.dart';
import 'package:flutter/material.dart';
import 'screens/locations/locations.dart';
import 'style.dart';
import 'screens/location_detail/location_detail.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

void main() {
  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  return runApp(MaterialApp(
      onGenerateRoute: _routes(),
      home: Locations(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(title: AppBarTextStyle),
          ),
          textTheme: TextTheme(
            title: TitleTextStyle,
            subtitle: SubTitleTextStyle,
            caption: CaptionTextStyle,
            body1: Body1TextStyle,

          ))));
}
