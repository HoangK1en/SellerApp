import 'package:emart_seller/const/colors.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/views/orders_screen/components/order_place.dart';
import 'package:emart_seller/views/profile_screen/profile_screen.dart';
import 'package:emart_seller/views/widgets/our_button.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back, color: darkGrey)),
        title: boldText(text: "Order details", color: fontGrey, size: 16.0),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: context.screenWidth,
        child: ourButton(color: green, onPress: () {}, title: "confirm Order"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // orderStatus(color: redColor, icon:Icons.done, title:"Placed", showDone:data)
              Visibility(
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    boldText(text: "Order status:", color: fontGrey, size: 16.0),
                    SwitchListTile(
                      activeColor: green,
                      value: true, onChanged: (value) {},
                      title: boldText(text: "Placed", color: fontGrey),
                      ),
                        SwitchListTile(
                      activeColor: green,
                      value: true, onChanged: (value) {},
                      title: boldText(text: "Confirmed", color: fontGrey),
                      ),
                           SwitchListTile(
                      activeColor: green,
                      value: true, onChanged: (value) {},
                      title: boldText(text: "on Delivery", color: fontGrey),
                      ),
                           SwitchListTile(
                      activeColor: green,
                      value: true, onChanged: (value) {},
                      title: boldText(text: "Delivered", color: fontGrey),
                      ),
                  ],
                ).box.padding(const EdgeInsets.all(8)).outerShadowMd.white.border(color: lightGrey).roundedSM.make(),
              ),
              Column(
                children: [
                  orderPlaceDetails(
                    d1: "data['order_code']",
                     d2: "data['shipping_method']",
                     title1: "Order Code",
                     title2: "Shipping Method",
                  ),
                  orderPlaceDetails(
                    d1: DateTime.now(),
                    d2: "data['payment_method']",
                      title1: "Order Code",
                     title2: "Shipping Method",
                  ),
                  orderPlaceDetails(
                    d1: "Unpaid",
                     d2: "Order Placed",
                     title1: "payment Status",
                     title2: "Delivery Status",
                  ),        
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // "Shipping Andress".text.f
                        boldText(text: "Shipping Andress", color: purpleColor),
                      ],
                    ),
                    SizedBox(
                      width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          boldText(text: "Total Amount", color: purpleColor),
                          boldText(text: "\$300", color: red, size: 16.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ).box.outerShadowMd.white.border(color: lightGrey).roundedSM.make(),
          const Divider(),
          10.heightBox,
          boldText(text: "Ordered Products", color: fontGrey, size: 16.0),
          10.heightBox,
          ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(3, (index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  orderPlaceDetails(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      width: 30,
                      height: 20,
                      color: purpleColor,
                    ),
                  ),
                  const Divider(),
                ],
              );
            }).toList(),
          )
              .box
              .outerShadowMd
              .white
              .margin(const EdgeInsets.only(bottom: 4))
              .make(),
              20.heightBox,
            ],
        ),
      ),
      ),
    );
  }
}
