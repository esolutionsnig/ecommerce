import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 25000,
      "color": "Black",
      "size": "M",
      "quantity": 12
    },
    {
      "name": "Blazer",
      "picture": "images/products/hills1.jpeg",
      "price": 35700,
      "color": "Pink",
      "size": "40",
      "quantity": 2
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_product_name: Products_on_the_cart[index]["name"],
          cart_product_picture: Products_on_the_cart[index]["picture"],
          cart_product_price: Products_on_the_cart[index]["price"],
          cart_product_color: Products_on_the_cart[index]["color"],
          cart_product_size: Products_on_the_cart[index]["size"],
          cart_product_quantity: Products_on_the_cart[index]["quantity"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_color;
  final cart_product_size;
  final cart_product_quantity;

  Single_cart_product(
      {this.cart_product_name,
      this.cart_product_picture,
      this.cart_product_price,
      this.cart_product_color,
      this.cart_product_size,
      this.cart_product_quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_product_picture, width: 80.0, height: 80.0),
        title: Text(cart_product_name),
        subtitle: Column(
          children: <Widget>[
            //Row Inside Column
            Row(
              children: <Widget>[
                // Size section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_product_size,
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                // Color section
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_product_color,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),

            // Product Price Section
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$$cart_product_price",
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            )
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_drop_up, color: Colors.pink),
                  iconSize: 100,
                  onPressed: () {}),
              Text(
                '$cart_product_quantity',
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.pink,
                  ),
                  iconSize: 100,
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
