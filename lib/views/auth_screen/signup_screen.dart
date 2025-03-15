import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/home_screen/home.dart';
import 'package:emart_app/views/home_screen/home_screen.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Welcome to $appname".text.fontFamily(bold).size(20).white.make(),
                15.heightBox,
                Column(
                  children: [
                    customeTextField(hint: nameHint, title: name),
                    customeTextField(hint: emailHint, title: email),
                    customeTextField(hint: passwordHint, title: password),
                    customeTextField(hint: passwordHint, title: retypePassword),

                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {}, child: forgetPass.text.make())),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: redColor,
                          checkColor: whiteColor,
                          value: isCheck, onChanged: (newValue){
                            setState(() {
                              isCheck = newValue;
                            });
                        }),
                        10.heightBox,
                        Expanded(
                          child: RichText(text: TextSpan(
                            children: [
                              TextSpan(text: "Tôi đồng ý với ",style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey
                              ) ),
                              TextSpan(text: termAndCond,style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor
                              ) ),
                              TextSpan(text: " & ",style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey
                              ) ),
                              TextSpan(text: privacyPolicy,style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor
                              ) ),
                            ]
                          )),
                        )
                      ],
                    ),
                    5.heightBox,
                    ourButton(
                        color: isCheck == true? redColor : lightGrey,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {
                          Get.to(() => Home());
                        })
                        .box
                        .width(context.screenWidth - 50)
                        .make(),
                    10.heightBox,
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: alreadyHaveAccount,
                          style: TextStyle(fontFamily: bold, color: fontGrey)
                        ),
                        TextSpan(
                            text: login,
                            style: TextStyle(fontFamily: bold, color: redColor)
                        )
                      ]
                    )).onTap((){
                      Get.back();
                    })
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.all(16))
                    .width(context.screenWidth - 70)
                    .shadowSm
                    .make(),
              ],
            ),
          ),
        ));
  }
}
