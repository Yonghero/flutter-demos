import 'package:flutter_application_1/services/location.dart';
import 'package:flutter_application_1/services/networking.dart';

const apiKey = '3c318ed958cd21552ac12886fbc2da25';

class WeatherModel {

  Future<dynamic> getCityWeather(String cityName) async {
    Map<String, dynamic> query = {
      'q': cityName,
      'appid': apiKey,
      'units': 'metric'
    };

    Uri uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', query);
    NetworkHelper networkHelper = NetworkHelper(uri);
    return await networkHelper.getData();
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getLocation();

    Map<String, dynamic> query = {
      'lat': location.latitude.toString(),
      'lon': location.longitude.toString(),
      'appid': apiKey,
      'units': 'metric'
    };

    Uri uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', query);
    NetworkHelper networkHelper = NetworkHelper(uri);

    var weatherData = await networkHelper.getData();

    return weatherData;
   
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
