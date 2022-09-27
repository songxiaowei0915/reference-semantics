import Foundation

class Point2D {
    var x: Double
    var y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    convenience init(at:(Double, Double)) {
        self.init(x: at.0, y: at.1)
    }
    
    convenience init?(at: (String, String)) {
        guard let x = Double(at.0), let y = Double(at.1) else {
            return nil
        }
        
        self.init(at: (x,y))
    }
}




