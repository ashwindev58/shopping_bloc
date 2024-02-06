import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/product/product_bloc.dart';
import 'application/product/productrepo.dart';
import 'views/landing/landing.dart';
import 'views/product_list/common_product_lis.dart';

void main() {
  runApp(const MyApp());
}

LoadingState globalProductState = LoadingState();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Flutter Demo', debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home:  ProductSearchScreen(),
        home: MultiBlocProvider(providers: [
          BlocProvider<ProductBloc>(
            create: (context) =>
                ProductBloc(ProductRepository())..add(FetchProductsEvent()),
          ),
          // Add other BlocProviders if needed
        ], child: LandingPage()),
      ),
    );
  }
}
