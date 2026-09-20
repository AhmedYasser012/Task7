class Employee {

  String? _name ;
  double? _salary ;


  Employee(String name , double salary){

    _name = name ;
    this.salary = salary;
    
  }
  set salary (double value){

    if (value >= 0 ){
      _salary = value ;
    }
  }
  double? get salary  => _salary;
}




void main (){

  Employee x = Employee("Ahmed", 120);
  // بيطبع القيمة عن طريق السطر 19
  print(x.salary);

}