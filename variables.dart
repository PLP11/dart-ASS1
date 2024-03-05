void main() {
  //variables in dart language
  String bookingname = 'first class'; //string data type
  int age = 7; // integer data type
  double height = 4.9; //double data type
  bool sleeping = true;

  //prints the variables
  print(bookingname);
  print(age);
  print(height);
  print(sleeping);
  //list
  List<String> names = ["Edith", "Elius", "Peter"]; //inputing a list of names
  print(
      "Value of names is $names"); //it will output the list of all names above
  print("Value of name index [0] is ${names[0]}"); //  According to index 0
  print("Value of name index [1] is ${names[1]}"); // According to index 1
  print("Value of name index [2] is ${names[2]}"); // According to index 2

//map type
  Map<String, int> ages = {
    'Ken': 26,
    'jobb': 23,
    'Sahwan': 15,
  };
  print("Ages of students: $ages");
}
