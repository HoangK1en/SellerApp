import 'package:emart_seller/const/colors.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/home_screen/home.dart';
import 'package:emart_seller/views/widgets/our_button.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.heightBox,
              normalText(text: welcome,size: 18.0),
              20.heightBox,
             Row(
              children: [
                 Image.asset(icLogo,
              width: 70,
              height: 70,
              ).box.border(color: white).rounded.padding(const EdgeInsets.all(8)).make(),
              10.widthBox,
              boldText(text: appname, size: 20.0),
              ],
             ),
             40.heightBox,
             normalText(text: loginTo, size: 18.0, color: lightGrey),
        10.heightBox,
             Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: textfieldGrey,
                    filled: true,
                    prefixIcon: Icon(Icons.email, color: purpleColor),
                    border: InputBorder.none,
                    hintText: emailHint
                  ),
                ),
                10.heightBox,
                    TextFormField(
                  decoration: InputDecoration(
                        fillColor: textfieldGrey,
                    filled: true,
                    prefixIcon: Icon(Icons.lock, color: purpleColor),
                    border: InputBorder.none,
                    hintText: passwordHint
                  ),
                ),
                10.heightBox,
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: () {}, child: normalText(text: forgotPassword, color: purpleColor))),
                20.heightBox,
                SizedBox(
                  width: context.screenWidth -100,
                  child: ourButton(
                    title: login,
                    onPress: () {
                      Get.to(() => const Home());
                    },
                  ),
                )
              ],
             ).box.white.rounded.outerShadowMd.padding(const EdgeInsets.all(8)).make(),
             10.heightBox,
             Center(child: normalText(text: anyProblem, color: lightGrey)),
             const Spacer(),
             Center(child: boldText(text: credit)),
             20.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}