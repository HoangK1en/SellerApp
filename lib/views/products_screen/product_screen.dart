import 'package:emart_seller/const/colors.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/const/strings.dart';
import 'package:emart_seller/views/products_screen/add_product.dart';
import 'package:emart_seller/views/products_screen/product_details.dart';
import 'package:emart_seller/views/widgets/appbar_widget.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart' as intl;
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {
          Get.to(() => const AddProduct());
        },
        child: const Icon(Icons.add, color: white),
        ),
       appBar: appbarWidget(products),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(20, (index) => ListTile(
                onTap: () {
                   Get.to(() => const ProductDetails());
                },
                leading: Image.asset(imgProduct, width: 100, height: 100, fit: BoxFit.cover),
                title: boldText(text: "Product title", color: fontGrey),
                subtitle: Row(
                  children: [
                    normalText(text: "\$40.0", color: darkGrey),
                    10.widthBox,
                    boldText(text: "Featured", color: green),
                  ],
                ),
                trailing: VxPopupMenu(
                  arrowSize: 0.0,
                  menuBuilder: () => Column(
                    children: List.generate(
                      popupMenuTitles.length, (index) => Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                        children: [
                          Icon(popupMenuIcons[index]),
                          5.widthBox,
                          normalText(text: popupMenuTitles[index], color: darkGrey)
                        ],
                                            ),
                      ).onTap(() {
                       
                      }),
                      ),
                  ).box.white.rounded.width(200).make(),
                 clickType: VxClickType.singleClick,
                 child: Icon(Icons.more_vert_rounded)),
                 ),
              ),
        ),
        ),
      ),
      );
    
  }
}