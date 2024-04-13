import 'package:flutter/material.dart';
import 'package:myfirst/app_layout.dart';
import 'package:myfirst/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
   const HotelScreen({Key? key,required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 17,top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Styles.primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ]
      ),
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(188),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: Styles.primaryColor,
              image: DecorationImage(image: AssetImage('image/${hotel['image']}'),fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 10,),
          Text('${hotel['place']}',style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
          const SizedBox(height: 5,),
          Text(hotel['destination'],style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          const SizedBox(height: 8,),
          Text('\$${hotel['price']}/night',style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),),
        ],
      ),
    );
  }
}
