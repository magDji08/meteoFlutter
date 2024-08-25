import 'dart:convert';
import 'package:get/get.dart';
import 'package:meteo/models/meteo_model.dart';
import 'package:http/http.dart' as http;

class MeteoService extends GetxController {
  var meteoVille = RxList<MeteoModel>();
  String ville = "";

  @override
  void onInit() {
    super.onInit();
    getMeteo(ville);
  }

  Future<void> getMeteo(ville) async {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=${ville}&appid=44ca295e932d977b529c5675a7f40135"));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      meteoVille
          .clear(); // Nettoyer la liste avant d'ajouter de nouvelles données
      meteoVille
          .add(MeteoModel.fromJson(data)); // Ajouter les données à la liste
    } else {
      // Gérer les erreurs
      print(
          "Erreur lors de la récupération des données : ${response.statusCode}");
    }
  }
}
