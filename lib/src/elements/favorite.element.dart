import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteElement extends StatelessWidget {
  const FavoriteElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
        child: Card(
          color: Colors.grey[300],
          child: Row(
            children: [
              Container(
                width: 130,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      "assets/images/tick_success_two.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25, left: 10, bottom: 0, right: 0),
                      child: Row(
                        children: [
                          Text(
                            "Samsung Galaxy A51",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, bottom: 0, right: 0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 0, left: 0, bottom: 0, right: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.yellow[500],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.yellow[500],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.yellow[500],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.yellow[500],
                                ),
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.yellow[500],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, bottom: 0, right: 0),
                      child: Row(
                        children: [
                          Text(
                            "\$450.0",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[500],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 0, left: 5, bottom: 2, right: 5),
                            child: Text(
                              "|",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "\R",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[500],
                                ),
                              ),
                              Text(
                                "1800000",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //width: 60,
                //height: double.infinity,
                //color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 0, left: 0, bottom: 0, right: 5),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.heart,
                      size: 22,
                      color: Colors.red[500],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
