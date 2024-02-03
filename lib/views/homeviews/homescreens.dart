import 'dart:developer';
import 'dart:ui';

import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';

import '../product_list/common_product_lis.dart';
import 'widgets/product_row.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'E-Commerce App',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.search),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.shopping_cart),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Container(
                    height: constraints.maxHeight * 0.25,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/discover.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 60,
                            ),
                            const Text(
                              'Discover the Latest Trends',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text('Shop Now'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 5,
                      left: 5,
                      child: SizedBox(
                        width: constraints.maxWidth - 12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ProductSearchScreen(),
                                  ),
                                );
                                //log("searched");
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(15)),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                margin: const EdgeInsets.all(5),
                                child: const Icon(
                                  Icons.search,
                                  size: 35,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                log("searched");
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(15)),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                margin: const EdgeInsets.all(5),
                                child: const Icon(
                                  Icons.exit_to_app,
                                  size: 35,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Featured Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildCategoryCard(
                              'Electronics', Icons.phone_android, Colors.blue),
                          buildCategoryCard(
                              'Fashion', Icons.accessibility, Colors.green),
                          buildCategoryCard('Home', Icons.home, Colors.orange),
                          buildCategoryCard('Beauty', Icons.face, Colors.pink),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage('images/bags.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0.35),
                      child: const Center(
                        child: BlinkText(
                          'Limited Time Offer',
                          style: const TextStyle(
                              fontSize: 29.0,
                              color: Colors.red,
                              fontWeight: FontWeight.w800),
                          endColor: Colors.white,
                          duration: Duration(milliseconds: 420),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const ProductsRow(tittle: "Best Products"),
              const SizedBox(height: 20),
              const ProductsRow(tittle: "Best Quality"),
              const SizedBox(height: 20),
              // Container(
              //   padding: const EdgeInsets.all(16),
              //   color: Colors.grey[200],
              //   child: const Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         'Testimonials',
              //         style: TextStyle(
              //           fontSize: 20,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.black,
              //         ),
              //       ),
              //       SizedBox(height: 10),
              //       // Add your testimonials section
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 20),
              // Container(
              //   padding: const EdgeInsets.all(16),
              //   color: Colors.blue,
              //   child: const Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(
              //         'Contact us: info@example.com',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 16,
              //         ),
              //       ),
              //       // Add your social media icons here
              //     ],
              //   ),
              // ),
            ],
          ),
        );
      }),
    );
  }

  Widget buildCategoryCard(String title, IconData icon, Color color) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 3,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: color,
                  size: 30,
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
