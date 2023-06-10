import 'package:base_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Row(
        children: [
          CustonFlatButton(
            text: 'Contador Stateful',
            onPressed: () => Navigator.pushNamed(context, '/statefull'),
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          CustonFlatButton(
            text: 'Contador Provider',
            onPressed: () => Navigator.pushNamed(context, '/provider'),
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          CustonFlatButton(
            text: 'Otra  Provider',
            onPressed: () => Navigator.pushNamed(context, '/asdjhk'),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
