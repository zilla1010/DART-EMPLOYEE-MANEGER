import 'dart:io';
import 'dart:js_interop';

void main (){
  List<String> employee = [];
  
  print("SELECT FROM THE FOLLOWING \n 1.Add employee \n 2.delete employee \n 3.update employee \n 4.search employee \n 5. display employee");
   int number1 = int.parse (stdin.readLineSync()!);

   switch (number1){
    case 1:
    addEmployee
    break;

    case 2:
    deleteEmployee
    break;

    case 3:
    updateEmployee
    break;

    case 4:
    searchEmployee
    break;

    case 5:
    displayEmployee
    break;

    
   }  

}
void addEmployee(){
  print("Enter Name:");
  var name = stdin.readLineSync();
  if (name !=null){
    employee.add(name);
  }
}


void deleteEmployee() {
  print('Enter employee ID to delete:');
  var id = int.tryParse(stdin.readLineSync() ?? '');

  var removed = employee.removeWhere((emp) => emp['id'] == id);
  if (removed > 0) {
    print('Employee deleted successfully.');
  } else {
    print('Employee not found.');
  }
}

void updateEmployee() {
  print('Enter employee ID to update:');
  var id = int.tryParse(stdin.readLineSync() ?? '');

  var index = employee.indexWhere((emp) => emp['id'] == id);
  if (index != -1) {
    print('Enter new name:');
    employee[index]['name'] = stdin.readLineSync();
    
    print('Employee updated successfully.');
  } else {
    print('Employee not found.');
  }
}
void searchEmployee() {
  print('Enter employee ID to search:');
  var id = int.tryParse(stdin.readLineSync() ?? '');

  var emp = employees.firstWhere((emp) => emp['id'] == id, orElse: () => null);
  if (emp != null) {
    print('Employee found: $emp');
  } else {
    print('Employee not found.');
  }
}



  
