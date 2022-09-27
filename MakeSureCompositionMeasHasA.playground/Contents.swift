import Foundation

class FIFOQueue {
    var storage: NSMutableArray
    
    init(storage: NSMutableArray) {
        self.storage = storage
    }
    
    var count: Int {
        return storage.count
    }
    
    func enqueue(element: Any) {
        self.storage.insert(element, at: 0)
    }
    
    func dequeue()->Any? {
        let last = storage.lastObject
        storage.removeLastObject()
        
        return last
    }
}
