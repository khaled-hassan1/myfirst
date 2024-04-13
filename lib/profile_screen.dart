import 'package:flutter/material.dart';
import 'package:myfirst/app_layout.dart';
import 'package:myfirst/app_styles.dart';
import 'package:myfirst/column_layout.dart';
import 'package:myfirst/layout_builder_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.all(AppLayout.getHeight(15)),
        children: [
          SizedBox(
            height: AppLayout.getHeight(30),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: AppLayout.getWidth(110),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(20),
                  ),
                  image: const DecorationImage(
                    image: AssetImage('image/img_1.png'),
                  ),
                ),
              ),
              SizedBox(
                height: AppLayout.getHeight(30),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  const Text(
                    'New-York',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff526799)),
                            child: const Icon(
                              Icons.shield_sharp,
                              size: 15,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Premium status',
                          style: TextStyle(
                              color: Color(0xff526799),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Edit',
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w600),
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            height: AppLayout.getHeight(30),
          ),
          Column(
            children: [
              Stack(
                  children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(18),
                    ),
                    color: Styles.primaryColor,
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Colors.blue.shade800),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                       CircleAvatar(
                         minRadius: 25,
                         backgroundColor: Colors.white,
                         child: Icon(
                          Icons.lightbulb_rounded,
                          size: 35,
                          color: Styles.primaryColor),
                       ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You've got a new award",
                            style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(5),
                          ),
                          Text(
                            "You have 150 flights in a year",
                            style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                .copyWith(color: Colors.white.withOpacity(0.9)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
          const SizedBox(height: 25,),
          Text('Accumulated miles',style: Styles.headLineStyle1,),
          const SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                Text('192802',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Styles.textColor),),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles accord',style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                    Text('3 Jun 2023',style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                  ],
                ),
                Divider(color:Colors.grey.shade300,),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                     AppColumnLayout(firstText: '23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: 'Airline CO', secondText: 'Received from', alignment: CrossAxisAlignment.end),
                  ],
                ),
                const SizedBox(height: 5,),
                const AppLayoutBuilderWidget(sections: 20),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    AppColumnLayout(firstText: '24', secondText: 'Miles', alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: 'McDonal\'s ', secondText: 'Received from', alignment: CrossAxisAlignment.end),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    AppColumnLayout(firstText: '52 340', secondText: 'Miles', alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: 'Exuma ', secondText: 'Received from', alignment: CrossAxisAlignment.end),
                  ],
                ),
                const SizedBox(height: 20,),
                InkWell(
                    onTap: () {},
                    child: Text(
                      'How to get more miles',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
