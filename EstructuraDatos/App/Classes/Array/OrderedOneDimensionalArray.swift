//
//  OrderedOneDimensionalArray.swift
//  EstructuraDatos
//
//  Created by soliduSystem on 09/01/23.
//

import Foundation

class OrderedOneDimensionalArray {
    
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
            
            while i < self.index! && self.myArray[i] != x && self.myArray[i] < x {
                print("BUSCNADO \(i)")
                i += 1
            }
            
            if self.myArray[i] == x {
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
            print("1 INSERT : x : \(x) index : \(self.index!) myarray : \(self.myArray) ")
            return self.index
        }
        
        var i : Int = 0
        
        while i <= self.index! && self.myArray[i] < x {
            i += 1
        }
        
        print("i : \(i) index : \(self.index!) lenght : \(self.length)")
        
        if i > self.index! && i < self.length - 1 {
            self.myArray[i] = x
            self.index! += 1
            print("2 INSERT : x : \(x) index : \(self.index!) myarray : \(self.myArray) ")
            return self.index!
        }
        
        if self.index! < self.length - 1{
            
            var j : Int = self.index!
            
            while j >= i {
                self.myArray[j + 1] = self.myArray[j]
                j -= 1
            }
            
            self.myArray[i] = x
            self.index! += 1
            
            print("2 INSERT : x : \(x) index : \(self.index!) myarray : \(self.myArray) ")

            return i
        }
      
        print("INSERT : NO SE AGREGO NADA")
        
       return nil
    }
    
    
    func remove(in x: Int) -> Int? {
        
        print("Elemento Encontrado : \(String(describing: self.search(for: x)))")
        
        if let i = self.search(for: x) {
            var j = i
            print("1 remove : x : \(x) index : \(self.index!) myarray : \(self.myArray) ")

            if j == self.index! {
                self.index! -= 1
                
                print("3 remove : x : \(x) index : \(self.index!) myarray : \(self.myArray) ")
                return i
            }
            
            while j < self.index! {
                self.myArray[j] = self.myArray[j + 1]
                j += 1
            }
            

            self.index! -= 1
            print("2 remove : x : \(x) index : \(self.index!) myarray : \(self.myArray) ")

            return  i
        }
        
        return nil
    }
    
    
    func update(element x: Int, in y: Int) -> (Int?, Int?) {

       return (nil, nil)
    }
    
    
    func readAll() -> [Int] {
        
        var myNewArray : [Int] = [Int]()

        if self.index != nil {

            var i : Int = 0

            while i <= self.index!{
                myNewArray.append(self.myArray[i])
                i += 1
            }

            return myNewArray
        }
        
        return myNewArray
    }
}
