import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/screens/cart_review.dart';
// import 'package:state_management/view_model/counter_vm.dart';
import 'package:state_management/view_model/productVm.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      print("*)(*))");
                      print(pvm.allProducts[index]);
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
