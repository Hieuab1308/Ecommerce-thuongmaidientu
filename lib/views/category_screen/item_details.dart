import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //swiper section

                  VxSwiper.builder(
                    autoPlay: true,
                    height: 300,
                    itemCount: 3,
                    aspectRatio: 16 / 9,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        imgFc5,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  //title and details section
                  title!.text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .size(16)
                      .make(),
                  10.heightBox,
                  //đánh giá
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  "\$30,00"
                      .text
                      .fontFamily(bold)
                      .color(redColor)
                      .size(18)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Seller".text.fontFamily(semibold).white.make(),
                          5.heightBox,
                          "In house brands"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .size(16)
                              .make(),
                        ],
                      )),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      )
                    ],
                  )
                      .box
                      .height(70)
                      .padding(EdgeInsets.symmetric(horizontal: 16))
                      .color(textfieldGrey)
                      .make(),
                  // color section
                  20.heightBox,
                  Column(children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Màu".text.color(textfieldGrey).make(),
                        ),
                        Row(
                          children: List.generate(
                              3,
                              (index) => VxBox()
                                  .size(40, 40)
                                  .roundedFull
                                  .color(Vx.randomPrimaryColor)
                                  .margin(EdgeInsets.symmetric(horizontal: 4))
                                  .make()),
                        )
                      ],
                    ).box.padding(EdgeInsets.all(8)).make(),

                    //quantity row
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Số lượng".text.color(textfieldGrey).make(),
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.remove)),
                            "0"
                                .text
                                .size(16)
                                .color(darkFontGrey)
                                .fontFamily(bold)
                                .make(),
                            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                            10.widthBox,
                            "0 available".text.color(textfieldGrey).make(),
                          ],
                        ),
                      ],
                    ).box.padding(EdgeInsets.all(8)).make(),

                    // total row
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Tổng".text.color(textfieldGrey).make(),
                        ),
                        "\$0.00"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(16)
                            .make()
                      ],
                    ).box.padding(EdgeInsets.all(8)).make(),
                  ]).box.white.shadowSm.make(),
                  //phần mô tả
                  10.heightBox,
                  "mô tả"
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  "Sản phẩm mẫu, mô tả minh họa..."
                      .text
                      .color(darkFontGrey)
                      .make(),
                  // button section
                  10.heightBox,
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                        itemDetailButtonsList.length,
                            (index) => ListTile(
                          title: "${itemDetailButtonsList[index]}"
                              .text
                              .semiBold
                              .make(),
                          trailing: Icon(Icons.arrow_forward),
                        )),
                  ),

                  // Goi y san pham
                  productsyoumaylike.text
                      .size(16)
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          6,
                              (index) => Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP1,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              10.heightBox,
                              "Laptop 4GB/64GB"
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .make(),
                              10.heightBox,
                              "\$600"
                                  .text
                                  .color(redColor)
                                  .fontFamily(bold)
                                  .make()
                            ],
                          )
                              .box
                              .white
                              .margin(
                              EdgeInsets.symmetric(horizontal: 4))
                              .roundedSM
                              .padding(EdgeInsets.all(8))
                              .make()),
                    ),
                  )
                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
              color: redColor,
              onPress: () {},
              textColor: whiteColor,
              title: "Thêm vào giỏ hàng",
            ),
          )
        ],
      ),
    );
  }
}
