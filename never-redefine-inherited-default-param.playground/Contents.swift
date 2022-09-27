import Foundation

class Shape {
    enum Color {
        case red, yellow, green
    }
    
    func doDraw(color: Color) {
        print("A \(color) shape")
    }
}

extension Shape {
    func draw(color: Color = .red) {
        doDraw(color: color)
    }
}

class Sequare: Shape {
    override func doDraw(color: Shape.Color) {
        print("A \(color) sequare")
    }
}

class Circle: Shape {
    override func doDraw(color: Shape.Color) {
        print("A \(color) circle")
    }
}

let s:Shape = Sequare()
let c:Shape = Circle()

s.draw()
c.draw()
