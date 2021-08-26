import 'package:flutter/material.dart';
import 'components/place/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Place',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: new Place(
        'Duwili Ellaaa',
        3,
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent efficitur condimentum ligula et hendrerit. Phasellus consectetur vel lorem cursus molestie. Fusce faucibus mi nec leo imperdiet, et elementum lorem dictum. Quisque tincidunt tortor a sapien porttitor tempus. Suspendisse non pharetra ex. In hac habitasse platea dictumst. Nunc tincidunt elit metus, in semper est hendrerit ut. Fusce hendrerit euismod massa, ac finibus purus egestas id.',
      ),
    );
  }
}
