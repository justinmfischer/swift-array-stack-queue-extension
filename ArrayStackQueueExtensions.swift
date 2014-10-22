//
//  Swift - ArrayStackQueueExtensions.swift
//
//  Created by JUSTIN M FISCHER on 10/21/14.
//  Copyright (c) 2014 Fun Touch Apps, LLC. All rights reserved.
//

import Foundation

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
