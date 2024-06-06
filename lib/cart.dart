import 'package:flutter/material.dart';
import 'package:grocery_shop_app/modal/notifier.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Consumer<notify>(
        builder: (context, value, child) => Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //text 1
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "My cart",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                //text 2

                //cart-items

                Expanded(
                    child: ListView.builder(
                        itemCount: value.cart.length,
                        itemBuilder: (context, index) {
                          //padding child of listview.builder

                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            //container child of padding
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  color: value.cart[index][3][100],
                                  borderRadius: BorderRadius.circular(5)),
                              //listilt child of container
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: ListTile(
                                    leading: Image.asset(value.cart[index][0]),
                                    title: Text(value.cart[index][1]),
                                    subtitle: Text("Rs." +
                                        value.cart[index][2].toString()),
                                    trailing: IconButton(
                                      onPressed: () {
                                        value.remove(index);
                                      },
                                      icon: Icon(
                                        Icons.remove_circle,
                                      ),
                                      color: value.cart[index][3][900],
                                    )),
                              ),
                            ),
                          );
                        })),

                //container for price

                Container(
                  height: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green),
                  // Parent-row
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //child - column
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Rs." + value.addPrice().toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        //child-button

                        SizedBox(
                          height: 50,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  side:
                                      BorderSide(width: 1, color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text("paynow"),
                                  Icon(Icons.arrow_forward_ios_outlined)
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
