import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/screens/cart_review.dart';
import 'package:state_management/view_model/productVm.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pvm = Provider.of<ProductVm>(context); // shared instance

    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => CartReview()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Badge(
                child: const Icon(Icons.shopping_cart),
                label: Text("${pvm.cartItems.length}"),
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: pvm.allProducts.length,
        itemBuilder: (ctx, index) {
          return Card(
            child: Column(
              children: [
                Image.asset(pvm.allProducts[index].image),
                ListTile(
                  title: Text(pvm.allProducts[index].title),
                  trailing: InkWell(
                    onTap: () {
                      pvm.addToCart(pvm.allProducts[index]);
                    },
                    child: const Icon(Icons.add_shopping_cart),
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
