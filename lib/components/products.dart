import 'package:flutter/material.dart';

// Pages
import 'package:ecommerce_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 35000,
      "price": 25000,
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 45000,
      "price": 35700,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 5500,
      "price": 5000,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 35000,
      "price": 25700,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 38000,
      "price": 29700,
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 68000,
      "price": 65700,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/skt1.jpeg",
      "old_price": 85000,
      "price": 75700,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/skt2.jpeg",
      "old_price": 45000,
      "price": 35700,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext ctx, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_product(
              product_name: product_list[index]['name'],
              product_picture: product_list[index]['picture'],
              product_old_price: product_list[index]['old_price'],
              product_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_product(
      {this.product_name,
      this.product_picture,
      this.product_old_price,
      this.product_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("x"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  // Pass values to ProductDetails Page
                  builder: (context) => ProductDetails(
                  prod_detail_name: product_name,
                  prod_detail_new_price: product_price,
                  prod_detail_old_price: product_old_price,
                  prod_detail_picture: product_picture,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        product_name,
                        style: TextStyle(
                          fontSize: 16.0
                        )
                      ),
                    ),
                    Text(
                      "\$$product_price",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pink
                      )
                    )
                  ],
                ),
              ),
              child: Image.asset(product_picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
