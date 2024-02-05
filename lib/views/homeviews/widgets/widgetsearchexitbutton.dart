
import 'dart:developer';

import 'package:flutter/material.dart';

import '../../product_list/common_product_lis.dart';

class WidgetSearchExitButtons extends StatelessWidget {
  final BoxConstraints constraints;
  const WidgetSearchExitButtons({
    super.key, required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
        ));
  }
}
