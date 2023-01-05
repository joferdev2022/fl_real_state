import 'package:feed_app/models/pictures.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Pictures> futuro = [
      Pictures(
          pais: 'Mexico',
          img: 'assets/cover_banner.jpg',
          title: 'Hotel Xcaret',
          tipo: 'Hotel all in one',
          text:
              'Cupidatat ipsum id consequat est est. Veniam magna aute magna adipisicing. Fugiat minim exercitation quis id anim ea tempor est est eiusmod deserunt do ex consectetur. Laboris incididunt ea ut mollit commodo magna et laboris elit ea minim elit. Ipsum occaecat quis ut do irure fugiat fugiat aliquip sit consectetur nulla eu tempor dolore. Qui incididunt eu quis aliquip occaecat.'),
      Pictures(
          pais: 'Bolivia',
          img: 'assets/cover_banner.jpg',
          title: 'Salares de Uyuni',
          tipo: 'Salar natural',
          text:
              'El Salar de Uyuni, en medio de los Andes en el sur de Bolivia, es la salina más grande del mundo. Es el legado de un lago prehistórico que se secó y dejó un paisaje desértico de casi 11,000 km cuadrados de sal blanca brillante, formaciones rocosas e islas con cactus.'),
      Pictures(
          pais: 'China',
          img: 'assets/cover_banner.jpg',
          title: 'Cultura China',
          tipo: 'cultural',
          text: ''),
      Pictures(
          pais: 'Corea',
          img: 'assets/cover_banner.jpg',
          title: 'Cultura Coreana',
          tipo: 'Cultural',
          text: ''),
    ];
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Futuros',
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            // child: Card(
            //   // elevation: 20,
            //   child: SizedBox(
            //     width: 400,
            //     height: 100,
            //     child: Center(child: Text('Elevated Card')),
            //   ),
            // ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: futuro.length,
              itemBuilder: (_, int index) {
                return Container(
                  width: 130,
                  height: 190,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, 'information',
                            arguments: futuro[index]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: FadeInImage(
                            placeholder:
                                const AssetImage('assets/no-image.jpg'),
                            image: AssetImage(futuro[index].img),
                            width: 130,
                            height: 190,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        futuro[index].title,
                        style: const TextStyle(color: Colors.white),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
