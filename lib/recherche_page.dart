import 'package:flutter/material.dart';
import 'package:meteo/controllers/navigation_controller.dart';
import 'package:get/get.dart';

class RecherchePage extends StatelessWidget {
  const RecherchePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Rechercher une ville",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Boîte de dialogue directement intégrée dans la page
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: textEditingController,
                        decoration: const InputDecoration(
                          labelText: "Nom de la ville",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Ajoute ici l'action pour la recherche
                          Get.toNamed(
                            "/searchVille",
                            arguments: textEditingController.text,
                          );
                          print(textEditingController.text);
                          textEditingController.clear();
                        },
                        child: const Text("Rechercher"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: Get.find<NavigationController>().selectedIndex.value,
          selectedItemColor: Colors.red,
          onTap: (index) =>
              Get.find<NavigationController>().onItemTapped(index),
        ),
      ),
    );
  }
}
