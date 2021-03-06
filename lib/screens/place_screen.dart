import 'package:flutter/material.dart';

import 'package:trips_app/widgets/reviews/reviews_list.dart';
import 'package:trips_app/widgets/common/bottom_navigation_bar.dart';
import '../widgets/place/index.dart';
import '../widgets/detail-appbar/index.dart';
import '../widgets/button/index.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: [
              PlaceWidget(
                name: 'Duwili Ellaaa',
                stars: 3,
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent efficitur condimentum ligula et hendrerit. Phasellus consectetur vel lorem cursus molestie. Fusce faucibus mi nec leo imperdiet, et elementum lorem dictum. Quisque tincidunt tortor a sapien porttitor tempus. Suspendisse non pharetra ex. In hac habitasse platea dictumst. Nunc tincidunt elit metus, in semper est hendrerit ut. Fusce hendrerit euismod massa, ac finibus purus egestas id.',
              ),
              ButtonWidget(buttonText: 'Navegar'),
              ReviewListWidget()
            ],
          ),
          DetailAppBarWidget(
            title: 'Place name',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
