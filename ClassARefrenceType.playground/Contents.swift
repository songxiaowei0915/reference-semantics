import Foundation

struct PointValue {
    var x: Int
    var y: Int
    
    mutating func move(to: PointValue) {
        self = to
    }
}

class PointRef {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func move(to: PointRef) {
        self.x = to.x
        self.y = to.y
    }
}

let p1 = PointRef(x: 0, y: 0)
let p2 = PointValue(x: 0, y: 0)

//p2.x = 10
p1.x = 10

var p3 = p1
var p4 = p2

print(p3 === p1)
p3.x = 10
print(p1.x)
