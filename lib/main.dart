import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// My Components
import 'package:ecommerce_app/components/horizontal_listview.dart';
import 'package:ecommerce_app/components/products.dart';
import 'package:ecommerce_app/pages/cart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    final appName = 'Ahịa';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        // Define the default brightness and colors.
        // brightness: Brightness.dark,
        primaryColor: Colors.pink,
        accentColor: Colors.pinkAccent,
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String title = 'Ahịa';
  @override
  Widget build(BuildContext ctx) {

    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 3.0,
        dotBgColor: Colors.transparent,
        dotColor: Colors.pink,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Header Card
           UserAccountsDrawerHeader( 
              accountName: Text('Jude Omenka'),
              accountEmail: Text('jude.omenka@etech-ng.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.pink,),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.pink
              ),
            ),
            //Body
            InkWell(
              onTap: (){},
                child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
                child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
                child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              },
                child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart),
              ),
            ),
            InkWell(
              onTap: (){},
                child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
                child: ListTile(
                title: Text('Setttings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
                child: ListTile(
                title: Text('About ShopApp'),
                leading: Icon(Icons.help, color: Colors.cyan,),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          // Image Carousel
          // image_carousel,
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text('Categories')
            ),
          ),
          
          // Horizontal List View
          HorizontalList(),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text('Recent Products')
            ),
          ),

          // Grid View
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
