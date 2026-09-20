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
  String? get name =>_name;

  displayinfo(){
    print("Name : $name");
    print("Salary : $salary");
  }
}


class Manager extends  Employee {
  Manager(super.name , super.salary , this.department);

  String ? department ;

  @override
  displayinfo(){
    print("Department : $department");
    super.displayinfo();
    print("-------------------");
  }

}

void main (){
Manager manager = Manager("Ali", 15000, "HR");
manager.displayinfo();

Employee employee = Employee('Youssef', 1000);

print("Salary : ${employee.salary} \$");
employee.salary=1500;
print("Salary : ${employee.salary} \$");

}
