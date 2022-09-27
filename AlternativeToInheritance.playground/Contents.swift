import Foundation

class Power {
    func calc(role: Role) -> Int { return 100 }
}

class Role {
    typealias PowerFn = (Role) -> Int
    
    var powerFn: Power
    
    init(powerFn: Power) {
        self.powerFn = powerFn
    }
    
    //fileprivate func doPower() -> Int { return 0}
}

extension Role {
    public func power() -> Int {
        let value = powerFn.calc(role:self)
        
        return value
    }
}

class Player: Role {
    
}

enum Level {
    case simple, normal, hard
    
    func rolePower(role: Role) -> Int {
        switch self {
        case .simple:
            return 300
        case .normal:
            return 200
        case .hard:
            return 100
        }
    }
}

//let p1 = Player(powerFn: {_ in return 100})
//let p2 = Player(powerFn: {_ in return 200})

//p1.powerFn = {_ in 50}



type(of: Level.rolePower(Level.simple))
type(of: p1.powerFn)
//p1.powerFn = Level.rolePower(Level.simple)


