import 'package:flutter/material.dart';
import 'package:myfirst/app_styles.dart';
import 'bottombar.dart';


void main() {

  runApp( MaterialApp(
    theme: ThemeData(
      primaryColor: primary,
    ),
    debugShowCheckedModeBanner: false,
    title: 'Message',
    home: const Message(),
  ));
}







class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            children: const [
              Text(
                'subtitle',
                style: TextStyle(fontSize: 30),
              ),
              Text('main title', style: TextStyle(fontSize: 20))
            ],
          )),
          const Icon(
            Icons.star,
            color: Colors.red,
            size: 48,
          ),
          const Text(
            '41',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  _buildMethod(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          size: 48,
          color: Colors.blue,
        ),
        Text(text.toUpperCase()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var message = _buildMethod((Icons.message), 'message');
    var share = _buildMethod((Icons.share), 'share');
    var personAdd = _buildMethod((Icons.person_add), 'person add');
    Widget heart = _buildMethod(Icons.favorite_rounded, 'favorite');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          message,
          personAdd,
          share,
          heart,
        ],
      ),
    );
  }
}
