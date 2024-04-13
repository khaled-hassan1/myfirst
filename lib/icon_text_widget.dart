import 'package:flutter/material.dart';

import 'app_layout.dart';
import 'app_styles.dart';

class AppIconText extends StatelessWidget {

  final IconData icon;
  final String text;
  const AppIconText({Key? key,required this.text,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      width: size.width*.44,
      height: AppLayout.getHeight(50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
      ),
      child: Row(
        children: [
          Icon(icon,color: Colors.grey),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text,style: Styles.textStyle,),
          ),
        ],
      ),
    );
  }
}
