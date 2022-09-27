import Foundation

//struct MyStruct {
//    func myMethod1() {
//        let number = 10
//    }
//}
//
//let myStruct = MyStruct()
//myStruct.myMethod1()

protocol MyProtocol {
    func method4()
}

extension MyProtocol {
    func method3() {
        print("MyProtocol.method3")
    }
    
    func method4() {
        print("MyProtocol.method4")
    }
}


class Base: NSObject, MyProtocol {
    dynamic func method1() {}
    
    func method3() {
        print("Base.method3")
    }
    
    func method4() {
        print("Base.method4")
    }
    
    func method5() {
        print("Base.method5")
    }
}

class SubClass: Base {
    override func method1() {
        
    }
    
    func method2() {
        
    }
    
    override func method4() {
        print("SubClass.method4")
    }
    
    override func method5() {
        print("SubClass.method5")
    }
}

let b: Base = SubClass()
b.method5()

//let p: MyProtocol = b
//
//b.method3()
//p.method3()
//
//let s = SubClass()
//let sub:MyProtocol = s
//
//s.method4()
//
//b.method1()
//s.method1()





