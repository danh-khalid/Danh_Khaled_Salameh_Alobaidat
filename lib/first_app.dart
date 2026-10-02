import 'package:flutter/material.dart';

import 'login/login_screen.dart';
import 'login/forgot_password_screen.dart';
import 'product/product_grid_screen.dart';
import 'product/product_list_screen.dart';
import 'product/product_data.dart';
import 'product/product_model.dart';
import 'product_details/product_details_screen.dart';
import 'routes/app_routes.dart';

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'ShopApp',

      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1976D2)),

        scaffoldBackgroundColor: const Color(0xFFF8FAFD),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1976D2),
          foregroundColor: Colors.white,
          centerTitle: false,
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFD8DFEA)),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFD8DFEA)),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFF1976D2), width: 1.5),
          ),
        ),
      ),

      initialRoute: AppRoutes.login,

      routes: {
        AppRoutes.login: (context) => const LoginScreen(),

        AppRoutes.forgotPassword: (context) => const ForgotPasswordScreen(),

        AppRoutes.productsGrid: (context) => const ProductGridScreen(),

        AppRoutes.productsList: (context) => const ProductListScreen(),
      },

      onGenerateRoute: (settings) {
        if (settings.name == AppRoutes.productDetails) {
          final product = settings.arguments as Product;

          return MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(product: product),
          );
        }

        return null;
      },
    );
  }
}
