abstract class Person {
  final String name;
  final String? id;
  final String location;

  Person(this.name, this.id, this.location);
}

class Student extends Person {
  String? dob;
  String? parent;
  String? address;
  String imgPath = 'image/koala.png';
  String? allergy;

  Student(String name, String id, String location, this.imgPath)
      : super(name, id, location);
}

class Staff extends Person {
  String? email;
  String imgPath = 'image/bear.png';

  Staff(String name, String id, String location, this.imgPath)
      : super(name, id, location);
}

class Parent extends Person {
  String? child;
  String? email;
  String? phone;

  Parent(String name, String id, String location) : super(name, id, location);
}
