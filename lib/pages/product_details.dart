import 'package:flutter/material.dart';

import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/pages/cart.dart';

class ProductDetails extends StatefulWidget {
  final prod_detail_name;
  final prod_detail_new_price;
  final prod_detail_old_price;
  final prod_detail_picture;

  ProductDetails({
    this.prod_detail_name,
    this.prod_detail_new_price,
    this.prod_detail_old_price,
    this.prod_detail_picture
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  final title = 'Ahịa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          child: Text(title)
        ),
        actions: <Widget>[
         IconButton(
            icon: Icon(Icons.search, color: Colors.white,),
            onPressed: (){},
          ),
         IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white,),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prod_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.prod_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.prod_detail_old_price}",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough
                          ),
                        )
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.prod_detail_old_price}",
                          style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          // THE FIRST BUTTONS
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text("Choose the size"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: Text("Close"),
                            )
                          ],
                        );
                      }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('Color'),
                          content: Text("Choose the color"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: Text("Close"),
                            )
                          ],
                        );
                      }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text('Quantity'),
                          content: Text("Choose the quantity"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: Text("Close"),
                            )
                          ],
                        );
                      }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Qty'),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          // THE SECOND BUTTONS
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.pink,
                  textColor: Colors.white,
                  elevation: 0.4,
                  child: Text('Buy Now'),
                ),
              ),

              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: (){},
                color: Colors.pink,
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: (){},
                color: Colors.pink,
              ),
            ],
          ),
          
          Divider(),

          ListTile(
            title: Text("Product Details"),
            subtitle: Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."),
          ),

          Divider(),

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product name",
                  style: TextStyle(
                    color: Colors.grey
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.prod_detail_name),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product brand",
                  style: TextStyle(
                    color: Colors.grey
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Brand XYZ"),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product condition",
                  style: TextStyle(
                    color: Colors.grey
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("New Design"),
              )
            ],
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Similar Products",
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold
              ),
            )
          ),

          // SIMILAR PRODUCT SECTION
          Padding(
            padding: const EdgeInsets.all(8.0),
              child: Container(
              height: 340.0,
              child: Similar_products(),
            ),
          ),
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext ctx, int index) {
          return Similar_single_product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Similar_single_product(
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

