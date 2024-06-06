import 'package:flutter/material.dart';

class gridItems extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final int price;
  final Color color;
  final void Function()? onPressed;
  const gridItems(
      {super.key,
      required this.imagePath,
      required this.itemName,
      required this.color,
      required this.price,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color.withOpacity(0.2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            imagePath,
            height: 100,
          ),
          Text(itemName),
          ElevatedButton(
            onPressed: onPressed,
            child: Text(
              "Rs." + price.toString(),
            ),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(color.withOpacity(0.5)),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                overlayColor: WidgetStatePropertyAll(color.withOpacity(1))),
          )
        ],
      ),
    ));
  }
}
