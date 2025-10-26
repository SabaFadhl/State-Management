import 'package:flutter/foundation.dart';
import 'package:state_management/models/product.dart';

class ProductVm extends ChangeNotifier{
  List<Product> allProducts=[];
  List<Product> cartItems=[];

  ProductVm(){
    allProducts.add(Product(title: "Iphone", image: "assets/images/iphone.jpg"));
    allProducts.add(Product(title: "Galaxy", image: "assets/images/galaxy.jpg"));
    allProducts.add(Product(title: "Ipad", image: "assets/images/ipad.jpg"));
    allProducts.add(Product(title: "Iphone3", image: "assets/images/iphone.jpg"));
    allProducts.add(Product(title: "Galaxy2", image: "assets/images/galaxy.jpg"));
    allProducts.add(Product(title: "Ipad2", image: "assets/images/ipad.jpg"));
  }

  addToCart(Product p){
    print("Hiiiiiiiiii");
    print(cartItems.length);
    cartItems.add(p);
    print(p);
    print(cartItems);

    notifyListeners();
  }

}