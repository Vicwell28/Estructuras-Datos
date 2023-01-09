//
//  UnorderedOneDimensionalArray.swift
//  EstructuraDatos
//
//  Created by soliduSystem on 09/01/23.
//

import Foundation

class UnorderedOneDimensionalArray{
    
    init(size : Int) {
        self.length = size
        self.myArray = [Int](repeating: 0, count: size)
    }
    
    var myArray: [Int]
    var length: Int
    private var index : Int? = nil

    
    func search(for x: Int) -> Int? {
        
        if self.index != nil {
            var i : Int = 0
            
            while i <= self.index! && self.myArray[i] != x {
                i += 1
            }
            
            if i <= self.index! {
                return i
            }
            
            return nil
        }
        
        return nil
    }
    
    
    func Insert(in x: Int) -> Int? {
        
        if self.index == nil {
            self.index = 0
            self.myArray[self.index!] = x
            return self.index
        } else {
            if self.index! < self.length - 1 {
                self.index! += 1
                self.myArray[self.index!] = x
                return self.index
            }
            return nil
        }

    }
    
    
    func remove(in x: Int) -> Int? {
        
        if self.search(for: x) != nil {
            var i : Int = self.search(for: x)!
            
            if i == 0 && self.index == 0 {
                self.index = nil
                return i
            }
            
            while i < self.index! {
                self.myArray[i] = self.myArray[(i + 1)]
                i += 1
            }
            
            self.myArray[self.index!] = 0
            self.index! -= 1
            return i
        }
        
        return nil
    }
    
    
    func update(element x: Int, in y: Int) -> (Int?, Int?) {

        if let i = self.remove(in: x) {
            if let j = self.Insert(in: y) {
                return (i, j)
            }
            return (i, nil)
        }
        return (nil, nil)
        
    }
    
    
    func readAll() -> [Int] {
        
        if self.index != nil {
            var i : Int = 0
            var j : [Int] = [Int]()
            while i <= self.index! {
                j.append((self.myArray[i]))
                i += 1
            }
            return j
        }
        return []
    }
    
}
