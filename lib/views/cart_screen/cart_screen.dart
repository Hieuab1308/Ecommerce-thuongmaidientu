import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: "Giỏ hàng trống".text.color(darkFontGrey).fontFamily(semibold).makeCentered(),
    );
  }
}
