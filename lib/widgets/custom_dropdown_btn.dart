import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget{

  List<String> values;
  double width;

  CustomDropdownButton({super.key, required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width*0.05),
      width: width,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(
            53,
            53,
            53,
            1.0,
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: DropdownButton(
        value: values.first,
        items: values
            .map(
              (e) => DropdownMenuItem(
            value: e,
            child: Text(e),
          ),
        )
            .toList(),
        onChanged: (_) {},
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

}