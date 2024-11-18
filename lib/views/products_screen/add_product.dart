import 'package:emart_seller/const/colors.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/const/strings.dart';
import 'package:emart_seller/views/products_screen/components/product_dropdown.dart';
import 'package:emart_seller/views/products_screen/components/product_images.dart';
import 'package:emart_seller/views/profile_screen/profile_screen.dart';
import 'package:emart_seller/views/widgets/custom_textfield.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
         leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back, color: darkGrey)),
        title: boldText(text: "Add product", color: fontGrey, size: 16.0),
        actions: [TextButton(onPressed: () {}, child: boldText(text: save, color: purpleColor))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextField(hint: "eg. BMW", label: "Product name"),
              5.heightBox,
                  customTextField(hint: "eg. Nice", label: "Description", isDesc: true),
                     5.heightBox,
                      customTextField(hint: "eg. \$100", label: "Price"),
                       5.heightBox,
                         customTextField(hint: "eg. \$100", label: "Price"),
                           5.heightBox,
                                 customTextField(hint: "eg. 20", label: "Quantity"),
                                 5.heightBox,
                                 productDropdown(),
                                    5.heightBox,
                                 productDropdown(),
                                       5.heightBox,
                                       normalText(text: "Choose product images"),
                                       5.heightBox,
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: List.generate(3, (index) => productImages(label: "${index + 1}")),
                                       ),
                                       5.heightBox,
                                         normalText(text: "First image will be your display image", color: lightGrey),
                                         5.heightBox,
                                         boldText(text: "Choose product colors"),
                                         5.heightBox,
                                         Wrap(
                                          spacing: 8.0,
                                          runSpacing: 8.0,
                                          children: List.generate(9, (index) =>
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                    VxBox().color(Vx.randomPrimaryColor).roundedFull.size(70, 70).make(),
                                    const Icon(Icons.done, color: white),
                                            ],
                                          ),
                                          ),
                                         ),
            ],
          ),
        ),
        ),
    );
  }
}