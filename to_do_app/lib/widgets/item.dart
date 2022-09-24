import 'package:flutter/material.dart';
import 'package:to_do_app/all-const/colors.dart';
import 'package:to_do_app/model/itemToDo.dart';

class item extends StatelessWidget {
  final itemToDo todo;
  const item({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () => {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          tileColor: tdGrey,
          leading: Icon(
            Icons.check_box,
            color: tdBlue,
          ),
          title: Text(todo.text!,
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
