
import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';

class WidgetOfferCard extends StatelessWidget {
  const WidgetOfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                style:  TextStyle(
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
    );
  }
}