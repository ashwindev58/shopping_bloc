
import 'dart:ui';

import 'package:flutter/material.dart';

class WidgetOneDiscover extends StatelessWidget {
  final BoxConstraints constraints;
  const WidgetOneDiscover({
    super.key, required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
