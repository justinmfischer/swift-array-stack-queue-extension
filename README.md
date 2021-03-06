##Adds Swift Array Extensions for Stack & Queue operations.


```swift
import Foundation

//Mutating keyword offers no thread-safe guarantees
extension Array {
    
    //Stack - LIFO
    mutating func push(newElement: T) {
        self.append(newElement)
    }
    
    mutating func pop() -> T? {
        return self.removeLast()
    }
    
    func peekAtStack() -> T? {
        return self.last
    }
    
    //Queue - FIFO
    mutating func enqueue(newElement: T) {
        self.append(newElement)
    }
    
    mutating func dequeue() -> T? {
        return self.removeAtIndex(0)
    }
    
    func peekAtQueue() -> T? {
        return self.first
    }
}

//
// Examples
//

//Stack Example
var stack = [String]()

//Word processing actions Array
let actions = ["Font-Color", "Font-Size", "Font-Weight"]

//Add each action to the Stack
for action in actions {
    stack.push(action)
}

//Peek at action
var action = stack.peekAtStack()
println("Peek at action: \(action)")

//Pop Action off the Stack
action = stack.pop()
println("Pop action off: \(action)")

//...

//Queue Example
var queue = [Int]()

//Order Ids Array
let orders = [1976787, 2643009, 3762923]

//Add each order into Queue
for order in orders {
    queue.enqueue(order)
}

//Peek at order
var order = queue.peekAtQueue()
println("Peek at Order Id: \(order)")

//Process each order as recieved
order = queue.dequeue()
println("Dequeue Order Id: \(order)")

//...
```
