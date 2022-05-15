import 'package:flutter/material.dart';
import 'package:paradise_hotel/pages/splashpage.dart';
import 'package:paradise_hotel/widget/attraction.dart';

class AttractionCard extends StatelessWidget {
  final Attraction? attraction;
  const AttractionCard({Key? key, this.attraction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.1),
                offset: Offset.zero)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          height: 300,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(attraction!.imgPath!),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: 150,
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              attraction!.name!,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            // const SizedBox(
                            //   width: 5,
                            // ),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop,
                                  size: 12,
                                  color: Colors.grey.withOpacity(0.7),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  attraction!.location!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.withOpacity(0.7),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            // const SizedBox(
                            //   width: 5,
                            // ),
                            RatingWidget(
                              rating: attraction!.rating!,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '\$${attraction!.price!.toStringAsFixed(2)}',
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Per Night',
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: mainThemeColor,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset.zero,
                              color: mainThemeColor.withOpacity(0.5))
                        ]),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 15,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  final int? rating;
  const RatingWidget({Key? key, this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(
        children: List.generate(
          5,
          ((index) {
            return Icon(
              index < rating! ? Icons.star : Icons.star_border,
              color: Colors.yellow,
            );
          }),
        ),
      ),
      const SizedBox(
        width: 4,
      ),
      Text(
        '${rating!}/5 Reviews',
        style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.7)),
      ),
    ]);
  }
}
