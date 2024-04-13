import 'package:flutter/material.dart';

import 'app_layout.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int sections;
  const AppLayoutBuilderWidget({Key? key,required this.sections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:
          (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / sections).floor(),
                  (index) => SizedBox(
                height: AppLayout.getHeight(1),
                width: AppLayout.getWidth(5),
                child: const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    )),
              )),
        );
      },
    );
  }
}
