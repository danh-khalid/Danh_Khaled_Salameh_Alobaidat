import 'package:flutter/material.dart';

import '../../routes/app_routes.dart';
import '../../utils/app_colors.dart';
import '../model/product_data.dart';
import '../model/product_model.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),

        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),

          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.productsGrid);
            },

            icon: const Icon(Icons.grid_view),
          ),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),

        itemCount: products.length,

        itemBuilder: (context, index) {
          final Product product = products[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 10),

            color: Colors.white,

            elevation: 1,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            child: InkWell(
              borderRadius: BorderRadius.circular(12),

              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.productDetails,
                  arguments: product,
                );
              },

              child: Padding(
                padding: const EdgeInsets.all(9),

                child: Row(
                  children: [
                    Container(
                      width: 82,
                      height: 82,

                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F3F5),

                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: Image.asset(product.image, fit: BoxFit.contain),
                    ),

                    const SizedBox(width: 14),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            product.name,

                            style: const TextStyle(
                              fontSize: 15,

                              fontWeight: FontWeight.w700,

                              color: AppColors.text,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text(
                            '\$${product.price.toStringAsFixed(0)}',

                            style: const TextStyle(
                              fontSize: 16,

                              fontWeight: FontWeight.bold,

                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Icon(Icons.chevron_right, color: Color(0xFF777E98)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
