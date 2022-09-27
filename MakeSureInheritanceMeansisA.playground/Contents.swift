import Foundation
import Darwin

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Employee: Person {
    var staffNumber: Int
    
    init(name:String , staffNumber: Int) {
        self.staffNumber = staffNumber
        
        super.init(name: name)
    }
}

let mars = Person(name: "Mars")
let jeff = Employee(name: "Jef", staffNumber: 23)

func printName(of person:Person) {
    print(person.name)
}

printName(of:mars)

class Bird {
    
}

class FlgingBird: Bird {
    func fly() {}
}

class Penguin: Bird {
    
}

class Rectangle {
    var w: Double
    var h: Double
    
    init(w: Double, h: Double) {
        self.w = w
        self.h = h
    }
}

class Square: Rectangle {
    init(edge: Double)
    {
        super.init(w: edge, h: edge)
    }
}

func scaleWidth(of rect: Rectangle) {
    let oldHeight = rect.h
    rect.w *= 1.1
    
    assert(oldHeight == rect.h)
}

var s11 = Square(edge: 11)
scaleWidth(of: s11)
