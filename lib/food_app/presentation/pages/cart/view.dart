import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CartProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<CartProvider>();
    final state = provider.state;

    return const Center(
      child: Text("Cart"),
    );
  }
}