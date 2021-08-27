import 'package:flutter/material.dart';

import 'package:trips_app/widgets/reviews/reviews_list.dart';
import '../widgets/place/index.dart';
import '../widgets/detail-appbar/index.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({Key? key}) : super(key: key);

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
      body: Stack(
        children: <Widget>[
          ListView(
            children: [
              PlaceWidget(
                'Duwili Ellaaa',
                3,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent efficitur condimentum ligula et hendrerit. Phasellus consectetur vel lorem cursus molestie. Fusce faucibus mi nec leo imperdiet, et elementum lorem dictum. Quisque tincidunt tortor a sapien porttitor tempus. Suspendisse non pharetra ex. In hac habitasse platea dictumst. Nunc tincidunt elit metus, in semper est hendrerit ut. Fusce hendrerit euismod massa, ac finibus purus egestas id.',
              ),
              ReviewListWidget()
            ],
          ),
          DetailAppBarWidget(
            title: 'Place name',
          ),
        ],
      ),
    );
  }
}
