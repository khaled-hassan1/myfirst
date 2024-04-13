import 'package:flutter/material.dart';
import 'package:myfirst/app_info_list.dart';
import 'package:myfirst/app_layout.dart';
import 'package:myfirst/app_styles.dart';
import 'package:myfirst/column_layout.dart';
import 'package:myfirst/ticket_tabs.dart';
import 'package:myfirst/ticket_view.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
           padding: EdgeInsets.only(right: AppLayout.getHeight(25)),
            children: [
              SizedBox(
                height: AppLayout.getHeight(20),
              ),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              SizedBox(
                height: AppLayout.getHeight(10),
              ),
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              SizedBox(
                height: AppLayout.getHeight(20),
              ),
              Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  )),
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                margin: const EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: '5122 364869',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const AppLayoutBuilderWidget(
                      sections: 20,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            firstText: '0055 444 77147',
                            secondText: 'Number of E-ticket',
                            alignment: CrossAxisAlignment.start),
                        AppColumnLayout(
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                            alignment: CrossAxisAlignment.end),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const AppLayoutBuilderWidget(
                      sections: 20,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('image/visa.png',scale: 11,),
                                Text(' **** 2462',style: Styles.headLineStyle3,)
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Text('Payment method',style: Styles.headLineStyle4,)
                          ],
                        ),
                        Column(children: const [
                          AppColumnLayout(
                            firstText: '\$249.99 ',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const AppLayoutBuilderWidget(
                      sections: 20,
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                  ],
                ),
              ),

              /* bar code*/
              Container(
                margin: const EdgeInsets.only(left: 25),
                padding: const EdgeInsets.only(top: 15,bottom: 15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect( 
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://www.youtube.com/',
                      barcode: Barcode.code128(),
                      drawText: false,
                      height: 70,
                      style: Styles.textStyle,
                      width: double.infinity ,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                  child: TicketView(
                    ticket: ticketList[0],
                  )),
              SizedBox(
                height: AppLayout.getHeight(20),
              ),
            ],
          ),
          Positioned(
            left: 12,
            top: 230,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2,color: Styles.textColor),
              ),
              child: CircleAvatar(
                minRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 12,
            top: 230,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2,color: Styles.textColor),
              ),
              child: CircleAvatar(
                minRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
