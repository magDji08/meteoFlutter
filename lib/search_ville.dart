import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meteo/services/meteo_service.dart';

class SearchVille extends StatelessWidget {
  SearchVille({super.key});
  final nomVille = Get.arguments;
  final MeteoService meteoService = Get.put(MeteoService());

  @override
  Widget build(BuildContext context) {
    meteoService.getMeteo(nomVille.toString());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Meteo / ${nomVille.toString()}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Bienvenue ${nomVille.toString()}"),
                ],
              ),
              Expanded(
                child: Obx(
                  () {
                    if (meteoService.meteoVille.isEmpty) {
                      return Center(child: const CircularProgressIndicator());
                    } else {
                      return ListView.builder(
                        itemCount: meteoService.meteoVille.length,
                        itemBuilder: (context, index) {
                          var meteo = meteoService.meteoVille[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  child: Image.network(
                                    // 'https://lequotidien.sn/wp-content/uploads/2023/08/METEO.jpg',
                                    'https://maroc-diplomatique.net/wp-content/uploads/2019/03/La-M%C3%A9t%C3%A9o-4.jpg',
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Ville: ${meteo.name}',
                                        style: TextStyle(
                                          color: Colors.red.shade300,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(Icons.thermostat_outlined),
                                          const SizedBox(width: 5),
                                          Text(
                                            'Température: ${(meteo.main.temp - 273.15).toStringAsFixed(1)}°C',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Icon(Icons.water_drop),
                                          const SizedBox(width: 5),
                                          Text(
                                            'Humidité: ${meteo.main.humidity}%',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Icon(Icons.air),
                                          const SizedBox(width: 5),
                                          Text(
                                            'Vent: ${meteo.wind.speed} m/s',
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
