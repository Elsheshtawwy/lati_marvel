import 'package:flutter/foundation.dart';
import 'package:lati_marvel/providers/baseProvider.dart';

class MoviesProvider extends BaseProvider {
  Future<void> fetchMovies() async {
    setBusy(true);

    final response =
        await api.getRequset("https://mcuapi.herokuapp.com/api/v1/movies");

       if (kDebugMode) {
      print("GET STATUS CODE:${response.statusCode}");
      print("GET RSPONSE:${response.body}");
      setBusy(false);
    }
    
  }
}
