import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/location_screen.dart';
import 'package:flutter_application_1/services/location.dart';
import 'package:flutter_application_1/services/networking.dart';
import 'package:flutter_application_1/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    
    WeatherModel weatherModel = WeatherModel();

    var weatherData =  await weatherModel.getLocationWeather();

    try {
      Future.delayed(Duration.zero, () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LocationScreen(locationWeather: weatherData);
        }));
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: SpinKitDoubleBounce(
        color: Colors.red,
        size: 100.0,
      )),
    );
  }
}
