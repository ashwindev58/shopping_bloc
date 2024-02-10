import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_bloc/application/best_products/best_products_bloc.dart';

import 'application/category/category_bloc_bloc.dart';
import 'views/landing/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CategoryBlocBloc(),
          ),
           BlocProvider(
            create: (context) => BestProductsBloc(),
          ),
          
        ],
        child: MaterialApp(
        title: 'Flutter Demo',debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home:  ProductSearchScreen(),
        home:  const LandingPage(),
      ),
      )
    );
  }
}
