import 'package:flutter/material.dart';
import 'package:to_do_app/all-const/colors.dart';

class item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      onTap: () => {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: tdBGColor,
      leading: Icon(
        Icons.check_box,
        color: tdBlue,
      ),
      title: Text('Do this Task',
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: TextDecoration.lineThrough,
          )),
      trailing: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: tdRed,
          borderRadius: BorderRadius.circular(5),
        ),
        child: IconButton(
          color: tdBGColor,
          iconSize: 18,
          icon: Icon(Icons.delete),
          onPressed: () => {},
        ),
      ),
    ));
  }
}
