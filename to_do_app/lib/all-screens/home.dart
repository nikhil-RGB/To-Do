import 'package:flutter/material.dart';
import 'package:to_do_app/all-const/colors.dart';
import 'package:to_do_app/model/itemToDo.dart';
import 'package:to_do_app/widgets/item.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<itemToDo> list = itemToDo.generateDefaultList();

  void handleItemDeletion() {}

  void handleToDoItemChange(itemToDo item) {
    setState(() {
      item.isDone = !item.isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: alternative,
      appBar: buildBar(),
      body: Stack(children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                createSearcher(),
                createYAxisList(),
              ],
            )),
        createAlign()
      ]),
    );
  }

  Align createAlign() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Row(children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter new ToDo task here',
                      border: InputBorder.none,
                    ),
                  ))),
          Container(
              margin: EdgeInsets.only(
                bottom: 20,
                right: 20,
              ),
              child: ElevatedButton(
                onPressed: () => {},
                child: Text('+', style: new TextStyle(fontSize: 35)),
                style: ElevatedButton.styleFrom(
                  primary: tdGrey,
                  minimumSize: Size(50, 50),
                  elevation: 10,
                ),
              )),
        ]));
  }

  Expanded createYAxisList() {
    return Expanded(
      child: ListView(children: [
        Container(
            margin: EdgeInsets.only(top: 50, bottom: 20),
            child: Text(
              "To-Do Items!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            )),
        for (itemToDo todo1 in list)
          item(
            todo: todo1,
            onItemChanged: handleToDoItemChange,
            onItemDeletion: handleItemDeletion,
          )
      ]),
    );
  }

  //Creates the search box text field for the home screen.
  Container createSearcher() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: tdGrey,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search, color: tdBlack, size: 20),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search To-Do here',
          hintStyle: TextStyle(color: tdBlack),
        ),
      ),
    );
  }

  //This function is used to build the app bar to be used in the application's homescreen.
  AppBar buildBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
        ));
  }
}
