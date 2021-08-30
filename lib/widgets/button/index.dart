import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;

  ButtonWidget({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Awesome Snackbar!'),
            // action: SnackBarAction(
            //   label: 'Action',
            //   onPressed: () {
            //     // Code to execute.
            //   },
            // ),
          ),
        )
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        alignment: Alignment.centerLeft,
        height: 50.0,
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Text(
            this.buttonText,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
