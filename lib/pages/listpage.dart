import 'package:flutter/material.dart';
import 'package:paradise_hotel/pages/splashpage.dart';
import 'package:paradise_hotel/widget/attractioncard.dart';

import '../widget/attraction.dart';
import '../widget/bottombarwidget.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Attraction> attractionsList = [
      Attraction(
          imgPath:
              'https://cf.bstatic.com/xdata/images/hotel/max1024x768/275162028.jpg?k=38b638c8ec9ec86624f9a598482e95fa634d49aa3f99da1838cf5adde1a14521&o=&hp=1',
          name: 'Grand Bavaro Princess',
          desc: 'All-Inclusive Resort',
          location: 'Punta Cana, DR',
          rating: 3,
          price: 80.0),
      Attraction(
          imgPath:
              'https://cf.bstatic.com/xdata/images/hotel/max1024x768/232161008.jpg?k=27808fe44ab95f6468e5433639bf117032c8271cebf5988bdcaa0a202b9a6d79&o=&hp=1',
          name: 'Hyatt Ziva Cap Cana',
          desc: 'All-Inclusive Resort',
          price: 90.0,
          rating: 4,
          location: 'Punta Cana, DR'),
      Attraction(
          imgPath:
              'https://cf.bstatic.com/xdata/images/hotel/max1024x768/256931299.jpg?k=57b5fb9732cd89f308def5386e221c46e52f48579345325714a310addf819274&o=&hp=1',
          name: 'Impressive Punta Cana',
          desc: 'All-Inclusive Resort',
          price: 100.0,
          rating: 5,
          location: 'Punta Cana, DR'),
      Attraction(
          imgPath:
              'https://cf.bstatic.com/xdata/images/hotel/max1024x768/283750757.jpg?k=4f3437bf1e1b077463c9900e4dd015633db1d96da38f034f4b70a4ba3ef76d82&o=&hp=1',
          name: 'Villas Mar Azul Dreams',
          desc: 'All-Inclusive Resort',
          price: 100.0,
          rating: 4,
          location: 'Tallaboa, PR'),
    ];
    return Scaffold(
      backgroundColor: mainThemeColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Padding(
          padding: EdgeInsets.only(left: 130, top: 5),
          child: Icon(
            Icons.pool,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: attractionsList.length,
                    itemBuilder: (context, index) {
                      Attraction activeAtrr = attractionsList[index];

                      return AttractionCard(
                        attraction: activeAtrr,
                      );
                    }),
              ),
              const BottomBarWidget()
            ],
          ),
        ),
      ),
    );
  }
}
