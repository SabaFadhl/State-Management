import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/productVm.dart';

class CartReview extends StatelessWidget {
  const CartReview({super.key});

  @override
  Widget build(BuildContext context) {
    final pvm = Provider.of<ProductVm>(context); // shared instance

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Review'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Badge(
              child: const Icon(Icons.shopping_cart),
              label: Text("${pvm.cartItems.length}"),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: pvm.cartItems.length,
        itemBuilder: (ctx, index) {
          return Card(
            child: Column(
              children: [
                Image.asset(pvm.cartItems[index].image),
                ListTile(
                  title: Text(pvm.cartItems[index].title),
                  trailing: InkWell(
                    onTap: () {
                      pvm.addToCart(pvm.cartItems[index]);
                    },
                    child: const Icon(Icons.delete),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
