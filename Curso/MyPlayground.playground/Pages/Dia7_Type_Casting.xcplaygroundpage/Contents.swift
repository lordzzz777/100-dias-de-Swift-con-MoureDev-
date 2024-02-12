import Foundation


// ---- Leccion 8: 63 Type Casting ----



// Comprobacion de tipos de datos o validación de tipos de datos

let myString = "Pepe"
let myInt = 47

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()

myClass.name = "Pepe Gutierrez"
myClass.age = 35

let myArray: [Any] = [myString, myInt, myClass]

for item in myArray{
    
    // type casting
    if item is String{
        // Dowmcasting
        let myItemString = item as! String
        print("Item es de tipo String y tiene el valor de \(myItemString)")
        
    }else if item is Int {
        let myItemInt = item as! Int
        print("Item es de tipo Int y tiene el valor de \(myItemInt)")
    }else if item is MyClass{
        let myItemClass = item as! MyClass
        print("Item es de tipo MyClass y tiene el valor de \(myItemClass.name!) y \(myItemClass.age!)")
    }
}

// Vamos a mostrar una forma mas sencilla para realizar la operacion anterior

for item in myArray {
    if let myItemString = item as? String{
        print("Item es de tipo String y tiene el valor de \(myItemString)")
    }else if let myItemInt = item as? Int{
        print("Item es de tipo String y tiene el valor de \(myItemInt)")
    }else if let myItemClass = item as? MyClass{
        print("Item es de tipo MyClass y tiene el valor de \(myItemClass.name!) y \(myItemClass.age!)")
    }
}
// esta manera ya podemos trabaja con agrupaciones de distintos tipos de datos
// sin precuparnos por el tipo de dato que estamos trabajando
// ya que se correponde con alguntipo de dato que queremos tratar
// y ese caso tranformarlo en ese tipo de dato

