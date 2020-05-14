import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude;
  double _longitude;

  Future<void> getCurrentLocation() async {
    try {
      print('almaya başladık');
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);//low ve lowestta initState altında değer döndürmüyor.
      print('almayı başardık');
      this._latitude = position.latitude;
      this._longitude = position.longitude;
    } catch (e) {
      print('Location is not getting.');
    }
  }

  double getLatitude() {
    return this._latitude;
  }

  double getLongitude() {
    return this._longitude;
  }
}
