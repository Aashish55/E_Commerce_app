import 'package:agro_fresh/cartpage.dart';
import 'package:agro_fresh/itemscreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/widgets.dart';
import 'about.dart';
import 'cartpage.dart';
import 'description.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/logo1.png',
                    height: 100.0,
                    width: 150.0,
                  ),
                  Text(
                    'Agro Fresh',
                    style: TextStyle(color: Colors.black54, fontSize: 30.0),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xffe1e1e1),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Cart'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => CartScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text('Categories'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.surround_sound),
              title: Text('Broadcasts'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('About Us'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => About()));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffffeaf0),
      appBar: AppBar(
        title: _searchAppBar(context),
        backgroundColor: Colors.redAccent.withAlpha(180),
        actions: <Widget>[
          new Stack(
            children: <Widget>[
              new IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 35.0,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => CartScreen()));
                    setState(() {
                      counter = 0;
                    });
                  }),
              counter != 0
                  ? new Positioned(
                      right: 4,
                      top: 4,
                      child: new Container(
                        padding: EdgeInsets.all(2),
                        decoration: new BoxDecoration(
                          color: Color(0xffffa502),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 18,
                          minHeight: 18,
                        ),
                        child: Text(
                          '$counter',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : new Container()
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 170.0,
                      width: MediaQuery.of(context).size.width,
                      child: Carousel(
                        boxFit: BoxFit.cover,
                        autoplay: true,
                        autoplayDuration: const Duration(seconds: 5),
                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(milliseconds: 1000),
                        dotSize: 6.0,
                        dotIncreasedColor: Color(0xffffeaf0),
                        dotBgColor: Colors.transparent,
                        dotPosition: DotPosition.bottomCenter,
                        dotVerticalPadding: 10.0,
                        showIndicator: true,
                        indicatorBgPadding: 7.0,
                        images: [
                          AssetImage('assets/slider1.jpg'),
                          AssetImage('assets/slider3.jpg'),
                          AssetImage('assets/slider2.jpg'),
                          AssetImage('assets/veg.jpg')
                        ],
                      ),
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 38.0),
                      child: Column(
                        children: <Widget>[
                          Text('Guraya Fresh Fruits',
                              style: TextStyle(
                                  color: Color(0xffffeaf0),
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Cursive')),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          FlatButton(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            color: Colors.white.withOpacity(0.65),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => ItemScreen()));
                            },
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.97,
                    child: FlatButton(
                      splashColor: Colors.white,
                      color: Color(0xff2ed573).withAlpha(200),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Image.asset(
                            'assets/Vegetable-Transparent.png',
                            height: 100.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Vegetables',
                            style: TextStyle(
                                fontSize: 35.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Cursive'),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => ItemScreen()));
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.97,
                    child: FlatButton(
                      splashColor: Colors.white,
                      color: Color(0xff63cdda).withAlpha(200),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Fruits',
                            style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.white,
                              fontFamily: 'Cursive',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Image.asset(
                            'assets/Fruit-Transparent.png',
                            height: 100.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => ItemScreen()));
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                ),
                child: Text(
                  'Recommended',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w300,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                padding: EdgeInsets.only(bottom: 5.0),
                height: 240.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: FlatButton(
                        splashColor: Color(0xffffeaf0),
                        color: Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/grapes.jpg',
                              height: 160.0,
                              width: 160.0,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Grapes',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star_border, color: Colors.red),
                              ],
                            ),
                            Text(
                              'Rs 150.0',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          desc('assets/grapes.jpg', 'Grapes', 130);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Description()));
                        },
                      ),
                    ),
                   SizedBox(
                     width: 10.0,
                   ),
                    Container(
                      child: FlatButton(
                        splashColor: Color(0xffffeaf0),
                        color: Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            
                            Image.asset(
                              'assets/banana.jpg',
                              height: 160.0,
                              width: 160.0,
                              fit: BoxFit.contain,
                            ),
                            Text(
                              'Banana',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star_border, color: Colors.red),
                                Icon(Icons.star_border, color: Colors.red),
                              ],
                            ),
                            Text(
                              'Rs 100.0',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          desc('assets/banana.jpg', 'Banana', 130);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Description()));
                        },
                      ),
                      width: 160.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: FlatButton(
                        splashColor: Color(0xffffeaf0),
                        color: Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/lemons.jpg',
                              height: 160.0,
                              width: 160.0,
                              fit: BoxFit.contain,
                              
                            ),
                            Text(
                              'Lemon',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star, color: Colors.red),
                                Icon(Icons.star_border, color: Colors.red),
                              ],
                            ),
                            Text(
                              'Rs 20.0',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          desc('assets/lemons.jpg', 'Lemon', 130);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Description()));
                        },
                      ),
                      width: 160.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _menuItems(icon, color, heading) {
  return Container(
    child: Column(
      children: <Widget>[
        Icon(
          icon,
          size: 25.0,
          color: Color(color),
        ),
        Text('$heading',
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.w600))
      ],
    ),
  );
}

Widget _searchAppBar(context) {
  return Card(
    color: Colors.white70,
    elevation: 5.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(7.0)),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey,
                border: InputBorder.none,
                hintText: 'Search Products',
              ),
            ),
          ),
          GestureDetector(
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}

// new Stack(
//             children: <Widget>[
//               new IconButton(icon: Icon(Icons.notifications), onPressed: () {
//                 setState(() {
//                   counter = 0;
//                 });
//               }),
//               counter != 0 ? new Positioned(
//                 right: 11,
//                 top: 11,
//                 child: new Container(
//                   padding: EdgeInsets.all(2),
//                   decoration: new BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   constraints: BoxConstraints(
//                     minWidth: 14,
//                     minHeight: 14,
//                   ),
//                   child: Text(
//                     '$counter',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 8,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ) : new Container()
//             ],
//           ),
