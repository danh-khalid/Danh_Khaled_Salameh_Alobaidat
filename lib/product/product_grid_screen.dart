import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../utils/app_colors.dart';
import 'product_data.dart';
import 'product_model.dart';

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),

        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),

          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.productsList);
            },

            icon: const Icon(Icons.view_list),
          ),
        ],
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(12),

        itemCount: products.length,

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

          crossAxisSpacing: 10,

          mainAxisSpacing: 10,

          childAspectRatio: 0.78,
        ),

        itemBuilder: (context, index) {
          final Product product = products[index];

          return InkWell(
            borderRadius: BorderRadius.circular(12),

            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.productDetails,
                arguments: product,
              );
            },

            child: Card(
              elevation: 1,

              color: Colors.white,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),

              child: Padding(
                padding: const EdgeInsets.all(9),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),

                        child: Container(
                          width: double.infinity,

                          color: const Color(0xFFF2F3F5),

                          child: Image.asset(
                            product.image,

                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      product.name,

                      maxLines: 1,

                      overflow: TextOverflow.ellipsis,

                      style: const TextStyle(
                        fontSize: 14,

                        fontWeight: FontWeight.w700,

                        color: AppColors.text,
                      ),
                    ),

                    const SizedBox(height: 4),

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
            ),
          );
        },
      ),
    );
  }
}
