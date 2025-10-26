import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/productVm.dart';

class CartReview extends StatelessWidget {
  // const CartReview({super.key});

  ProductVm pvm = ProductVm();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CartReview()));
              },
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Badge(
                  child: Icon(Icons.shopping_cart),
                  label: Consumer<ProductVm>(builder: (ctx,p,child)=> Text("${p.cartItems.length}")),
                ),),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print(pvm.cartItems.length);
            // Provider.of<CounterVM>(context, listen: false).addOne();

          },
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
                      child: Icon(Icons.add_shopping_cart),
                    ),
                  ),
                ],
              ),
            );
          },
        )
    );
  }
}
