import Foundation

class Person {
    var name: String
    var apartment: Apartment?
    var car: Car!
    
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Car {
    unowned var owner: Person
    
    init(owner: Person) {
        self.owner = owner
        print("Car is being initialized")
    }
    
    deinit {
        print("Car is being deinitialized")
    }
    
}

class Apartment {
    let unit: String
    weak var tenant: Person?
    
    init(unit: String) {
        self.unit = unit
        print("Apartment \(unit) is being initialized")
    }
    
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}

if true {
    var mars: Person? = Person(name: "Mars")

    var car11 = Car(owner: mars!)

    mars?.car = car11
    mars = nil
}


//var unit11: Apartment? = Apartment(unit: "11")
//
//mars?.apartment = unit11
//unit11?.tenant = mars
//
//mars = nil
//unit11 = nil
