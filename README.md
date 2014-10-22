swift-array-stack-queue-extension
=================================

Swift Array Extensions to add Stack and Queue operations.


```swift
import Foundation

extension Array {
    
    //Stack - LIFO
    mutating func push(newElement: T) {
        self.append(newElement)
    }
    
    mutating func pop() -> T? {
        return self.removeLast()
    }
    
    //Queue - FIFO
    mutating func enqueue(newElement: T) {
        self.append(newElement)
    }
    
    mutating func dequeue() -> T? {
        return self.removeAtIndex(0)
    }
    
    //Common
    func peek() -> T? {
        return self.first
    }
}
```
