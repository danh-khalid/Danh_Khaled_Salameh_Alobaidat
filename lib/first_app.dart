import 'package:flutter/material.dart';

import 'login/login_screen.dart';
import 'forgot_password/forgot_password_screen.dart';
import 'product/view/product_grid_screen.dart';
import 'product/view/product_list_screen.dart';
import 'product/model/product_model.dart';
import 'product_details/product_details_screen.dart';
import 'routes/app_routes.dart';
import 'utils/theme/theme.dart';

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'ShopApp',

      theme: appTheme,

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
