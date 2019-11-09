import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  Icon filedIcon;
  String filedHintText;

  CustomInputText(this.filedIcon, this.filedHintText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Material(
        elevation: 5,
        color: Colors.orange,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: filedIcon,
            ),
            Container(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: filedHintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
