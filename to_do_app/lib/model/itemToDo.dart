class itemToDo {
  String? ID;
  String? text;
  bool isDone;
  itemToDo({required this.ID, required this.text, this.isDone = false});
  static List<itemToDo> generateDefaultList() {
    return [
      itemToDo(ID: '01', text: 'Morning Routine', isDone: true),
      itemToDo(ID: '02', text: 'Buy Dog food', isDone: true),
      itemToDo(
        ID: '03',
        text: 'Check Emails',
      ),
      itemToDo(
        ID: '04',
        text: 'Team Meeting',
      ),
      itemToDo(
        ID: '05',
        text: 'Work on mobile apps',
      ),
      itemToDo(
        ID: '06',
        text: 'Dinner with Jenna',
      ),
    ];
  }
}
