import Foundation

class Point2D {
    var x: Double
    var y: Double
    
    init(x: Double = 0, y: Double = 0) {
        self.x = x
        self.y = y
    }
    
    init?(xy:Double) {
        guard xy > 0 else { return nil }
        
        self.x = xy
        self.y = xy
    }
    
    convenience init(at: (Double, Double)) {
        self.init(x: at.0, y: at.1)
    }
    
    convenience init?(at:(String, String)) {
        guard let x = Double(at.0), let y = Double(at.1) else {
            return nil
        }
        
        self.init(at: (x, y))
    }
}

class Point3D: Point2D {
    var z: Double
    
    func initXYZ(x: Double , y: Double, z: Double) {
        self.x = round(x)
        self.y = round(y)
        self.z = round(z)
    }
    
    init(x: Double , y: Double, z: Double) {
        self.z = z
        super.init(x: x, y: y)
        
        initXYZ(x: x, y: y, z: z)
    }
    
    override init(x: Double, y: Double) {
        self.z = 0
        super.init(x: x, y: y)
    }
    
    override init?(xy:Double) {
        guard xy > 0 else { return nil }
        
        self.z = 0
        super.init(x: xy, y: xy)
    }
    
    convenience init(at: (Double, Double)) {
        self.init(x: at.0, y: at.1, z:0)
    }
}
