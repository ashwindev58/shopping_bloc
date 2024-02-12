
import 'package:flutter/material.dart';

import '../../homeviews/widgets/shimmer_custom_Size.dart';

class ShimerArea extends StatelessWidget {
  const ShimerArea({
    super.key,
   
  });

  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: constraints.maxWidth > 600 ? 3 : 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.75,
            ),
            itemCount:10,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(10),
                child: shimmerCustomSize(
                  width: constraints.maxWidth * 0.45,
                  height: constraints.maxHeight * 0.45,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
