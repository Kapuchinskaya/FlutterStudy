import 'package:geolocator/geolocator.dart';
//import 'package:location/location.dart';

class MyLocation {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Geolocator geolocator = Geolocator();
      Position position = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;

      // Location location = new Location();

      // bool _serviceEnabled;
      // PermissionStatus _permissionGranted;
      // LocationData _locationData;

      // _serviceEnabled = await location.serviceEnabled();
      // if (!_serviceEnabled) {
      //   _serviceEnabled = await location.requestService();
      //   if (!_serviceEnabled) {
      //     return;
      //   }
      // }

      // _permissionGranted = await location.hasPermission();
      // if (_permissionGranted == PermissionStatus.denied) {
      //   _permissionGranted = await location.requestPermission();
      //   if (_permissionGranted != PermissionStatus.granted) {
      //     return;
      //   }
      // }

      // _locationData = await location.getLocation();

      // latitude = _locationData.latitude;
      // longitude = _locationData.longitude;
    } catch (e) {
      print(e);
    }
  }
}
