import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_buttom.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(children: [
        Expanded(child: CustomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            text: '19.99€' ,
          borderRadius: BorderRadius.only(
            topLeft:  Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        ),
        Expanded(child: CustomButton(
            backgroundColor: Colors.deepOrangeAccent,
            textColor: Colors.white,
            text: 'Free preview',
          borderRadius: BorderRadius.only(
            topRight:  Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        ),

      ],),
    );
  }
}
