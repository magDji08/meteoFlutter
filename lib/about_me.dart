import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "A propos de moi",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Je m'appelle Mamadou Absa Gueye, étudiant en troisième année à l'Université Alioune Diop de Bambey, où je poursuis des études en Développement et Administration de Web Applications. Passionné par le domaine des nouvelles technologies et de la programmation, je m'efforce constamment d'élargir mes compétences et de relever de nouveaux défis. Actuellement, je travaille sur un projet de fin d'études portant sur la gestion de présence multifactorielle utilisant des technologies comme les cartes RFID, les empreintes digitales et la reconnaissance faciale. Ce projet m'a permis de renforcer mes compétences en développement web et mobile, en particulier avec des frameworks comme Django pour le backend et Flutter pour le développement d'applications mobiles. Je suis également à l'aise avec des outils et des bibliothèques tels que GetX pour la gestion de l'état dans Flutter, et je cherche constamment à intégrer des solutions innovantes et efficaces dans mes projets. Ma curiosité naturelle et mon désir d'apprendre me poussent à rester à jour avec les dernières tendances et innovations technologiques. En plus de mes études, je participe activement à divers projets et stages pour acquérir une expérience pratique et approfondie dans le domaine du développement de logiciels. Je suis toujours ouvert à de nouvelles opportunités et collaborations qui me permettent de mettre en pratique mes compétences et de contribuer à des projets passionnants. N'hésitez pas à me contacter si vous souhaitez en savoir plus sur mes expériences ou discuter de futures collaborations.",
              // style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
