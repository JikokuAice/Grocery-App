import 'package:flutter/material.dart';
import 'package:grocery_shop_app/modal/notifier.dart';
import './component/gridItems.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  State<Home> createState() => _Home(); 
}

class _Home extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        splashColor: Color.fromARGB(255, 82, 82, 82),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Cart(),
              ));
        },
        child: Icon(Icons.shopping_bag_rounded),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 15, right: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //text
            Text("Good morning ☀️ ,"),
            //sizebox
            SizedBox(
              width: 300,
              child: Text(
                "Let's order fresh item for you",
                style: TextStyle(fontSize: 40),
              ),
            ),
            //divider
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Divider(
                color: Color.fromARGB(234, 194, 194, 194),
              ),
            ),
//text widget
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text("Fresh Items 💚"),
            ),

// items in grid

            Expanded(
              child: Consumer<notify>(
                builder: (BuildContext, notify, child) => GridView.builder(
                  itemCount: notify.items.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.8),
                  itemBuilder: (BuildContext, int i) => SizedBox(
                    height: 280,
                    width: 120,
                    child: gridItems(
                      imagePath: notify.items[i][0],
                      itemName: notify.items[i][1],
                      price: notify.items[i][2],
                      color: notify.items[i][3],
                      onPressed: () {
                        notify.addCart(i);
                      },
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
