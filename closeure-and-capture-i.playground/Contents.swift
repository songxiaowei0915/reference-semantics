import Foundation

var i = 10
var captureI = { [i] in print(i) }

i += 1
captureI()

class Demo { var value = "" }

var demo = Demo()
var captureDemo = { [demo] in print(demo.value) }
demo.value = "updated"
demo = Demo()
captureDemo()

class Role {
    var name: String
    lazy var action: () -> Void = {
        print("\(self) takes this action")
    }
    
    init (_ name: String = "Foo") {
        self.name = name
        print("\(self) init")
    }
    
    deinit {
        print("\(self) deinit")
    }
}

extension Role: CustomStringConvertible {
    var description: String {
        return "<Role \(name)>"
    }
}

if true {
    let boss = Role("boss")
    boss.action()
    
//    let fn = {
//        print("\(boss) takes this action")
//    }
//
//    boss.action = fn
}
