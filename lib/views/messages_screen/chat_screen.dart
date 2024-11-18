import 'package:emart_seller/const/colors.dart';
import 'package:emart_seller/const/const.dart';
import 'package:emart_seller/const/strings.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: boldText(text: chats, size: 16.0, color: fontGrey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
            child: Container(color: Colors.green),
          ),
          SizedBox(
            height: 56,
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter message", border: InputBorder.none),
                )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: purpleColor,
                    ))
              ],
            ).box.padding(const EdgeInsets.all(12)).make(),
          ),
        ]),
      ),
    );
  }
}
