
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  //log("searched");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 8),
                  //margin: const EdgeInsets.all(5),
                  child:  const Icon(
                   CupertinoIcons.back,
                    size: 35,
                  ),
                ),
              );
  }
}
