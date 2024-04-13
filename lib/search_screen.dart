import 'package:flutter/material.dart';
import 'package:myfirst/app_layout.dart';
import 'package:myfirst/app_styles.dart';
import 'package:myfirst/icon_text_widget.dart';
import 'package:myfirst/text_widget.dart';
import 'package:myfirst/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          SizedBox(
            height: AppLayout.getHeight(40),
          ),
          Text(
            'What are \nyou looking for?',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          const AppTicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          const AppIconText(
              text: 'Departure', icon: Icons.flight_takeoff_sharp),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          const AppIconText(text: 'Arrival', icon: Icons.flight_land_sharp),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(15, 50),
                backgroundColor: Colors.blue.shade800,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )),
            child: const Text(
              'Find tickets',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'view all'),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(20),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12),
                        ),
                        image: const DecorationImage(
                            image: AssetImage('image/sit.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "20% \ndiscount on the early booking of this flight. Don't miss.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(174),
                        decoration: BoxDecoration(
                          color: Colors.teal.shade300,
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount \nfor servy',
                              style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Take the survey about our services and get discount',
                              style: Styles.headLineStyle3.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18,color: Colors.teal),

                        ),
                      ),),
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(10),),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.deepOrangeAccent
                    ),
                    child: Column(
                      children: [
                        Text('Take love',style: Styles.headLineStyle2.copyWith(color: Colors.white)),
                        const SizedBox(height: 10,),
                        RichText(text: const TextSpan(
                          children:[
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 25)
                            ),
                            TextSpan(
                                text: '🤩',
                                style: TextStyle(fontSize: 35)
                            ),
                            TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 25)
                            ),
                          ],
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
