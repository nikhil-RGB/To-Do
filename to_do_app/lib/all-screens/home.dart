import 'package:flutter/material.dart';
import 'package:to_do_app/all-const/colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: tdBGColor,
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: tdBlack,
                size: 30,
              ),
              Container(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.blue.shade400,
                    ),
                  ))
            ],
          )),
      body: Container(
        child: Text('This is my homepage'),
      ),
    );
  }
}
