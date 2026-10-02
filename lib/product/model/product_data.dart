import 'product_model.dart';

const List<Product> products = [
  Product(
    name: 'Nike Air Max',
    price: 120,
    brand: 'Nike',
    category: 'Shoes',
    inStock: true,
    description:
        'All day comfort with a modern design. Suitable for everyday wear.',
    image: 'assets/images/nike_air_max.png',
  ),

  Product(
    name: 'Travel Backpack',
    price: 60,
    brand: 'Urban Gear',
    category: 'Bags',
    inStock: true,
    description:
        'A practical backpack with multiple compartments for daily travel.',
    image: 'assets/images/travel_backpack.png',
  ),

  Product(
    name: 'Wireless Headphones',
    price: 199,
    brand: 'SoundMax',
    category: 'Electronics',
    inStock: true,
    description:
        'Comfortable wireless headphones with clear sound and long battery life.',
    image: 'assets/images/wireless_headphones.png',
  ),

  Product(
    name: 'Smart Watch',
    price: 299,
    brand: 'TechTime',
    category: 'Wearables',
    inStock: true,
    description:
        'A modern smart watch for notifications, activity tracking, and daily use.',
    image: 'assets/images/smart_watch.png',
  ),

  Product(
    name: 'Sunglasses',
    price: 90,
    brand: 'Vision',
    category: 'Accessories',
    inStock: true,
    description: 'Stylish sunglasses suitable for everyday use.',
    image: 'assets/images/sunglasses.png',
  ),

  Product(
    name: 'Casual Shoes',
    price: 85,
    brand: 'StreetStep',
    category: 'Shoes',
    inStock: false,
    description: 'Comfortable casual shoes for everyday activities.',
    image: 'assets/images/casual_shoes.png',
  ),
];
