import Foundation

extension Optional {
    func withExtentedLifetime(_ body:(Wrapped) -> Void) {
        if let value = self {
            body(value)
        }
    }
}

class Role {
    var name: String
    lazy var action: () -> Void = { [weak self] in
        if let role = self {
            print("\(role) takes this action")
        }
    }
    
    func levelUp() {
        let globalQueue = DispatchQueue.global()
        
        globalQueue.async { [weak self] in
            self.withExtentedLifetime {
                print("Before: \($0) level up")
                usleep(1000)
                print("After: \($0) level up")
            }
        }
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
    var boss = Role("boss")
    let fn = {[unowned boss] in print("\(boss) takes this action")}
    
    boss.action = fn
    boss = Role("hidden boss")
    boss.action()
}

var player: Role? = Role("P1")
player?.levelUp()

usleep(500)
print("Set player to nil")
player = nil

