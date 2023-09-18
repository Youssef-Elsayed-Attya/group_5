
void main(){

  // d.t address = value
  // class address = class()
  Employee e1=Employee(salary: 8000, id: 10, name: 'ahmed', age: 22, gender: 'male');

  e1.printInfo();

}


class Cars{
  final String brand;
  final String model;
  final String color;
  Cars({required this.brand ,required  this.model , required this.color});

  //getter
 String getBrand(){
    return brand;
 }
}


class Human{
  final String name;
  final int age ;
  final String gender;

  Human({required this.name,required this.age ,required this.gender });
}

class Employee extends Human{

  final double salary;
  final int id ;

  Employee({required this.salary,required this.id,required super.name,required super.age,required super.gender  });

  void printInfo(){
    print('name: ${this.name}');
    print('age: ${this.age}');
    print('salary: ${this.salary}');

}
}