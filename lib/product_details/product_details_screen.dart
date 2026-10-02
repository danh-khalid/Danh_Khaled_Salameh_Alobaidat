import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../product/model/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: const Icon(Icons.arrow_back),
        ),

        actions: [
          IconButton(
            onPressed: () {},

            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: double.infinity,

              height: 245,

              decoration: BoxDecoration(
                color: const Color(0xFFF2F3F5),

                borderRadius: BorderRadius.circular(10),
              ),

              child: Image.asset(product.image, fit: BoxFit.contain),
            ),

            const SizedBox(height: 18),

            Text(
              product.name,

              style: const TextStyle(
                fontSize: 24,

                fontWeight: FontWeight.bold,

                color: AppColors.text,
              ),
            ),

            const SizedBox(height: 3),

            Text(
              '\$${product.price.toStringAsFixed(0)}',

              style: const TextStyle(
                fontSize: 24,

                fontWeight: FontWeight.bold,

                color: AppColors.primary,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              product.description,

              style: const TextStyle(
                fontSize: 15,

                height: 1.45,

                color: AppColors.secondaryText,
              ),
            ),

            const SizedBox(height: 18),

            _infoRow('Brand', product.brand),

            _infoRow('Category', product.category),

            _infoRow(
              'In Stock',

              product.inStock ? 'Yes' : 'No',

              valueColor: product.inStock ? AppColors.success : AppColors.error,
            ),

            const SizedBox(height: 18),

            SizedBox(
              width: double.infinity,

              height: 50,

              child: ElevatedButton(
                onPressed: product.inStock
                    ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Product added to cart'),
                          ),
                        );
                      }
                    : null,

                child: const Text(
                  'Add to Cart',

                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value, {Color? valueColor}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),

      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFE3E6EC))),
      ),

      child: Row(
        children: [
          Text(
            label,

            style: const TextStyle(
              fontSize: 15,

              color: AppColors.secondaryText,
            ),
          ),

          const Spacer(),

          Text(
            value,

            style: TextStyle(
              fontSize: 15,

              fontWeight: FontWeight.w600,

              color: valueColor ?? AppColors.text,
            ),
          ),
        ],
      ),
    );
  }
}
