//
//  ClassArray.swift
//  EstructuraDatos
//
//  Created by soliduSystem on 07/01/23.
//

import Foundation


protocol PArray {
    var myArray : [AnyObject] {get set}
    
    var length : Int { get set }
    
    func search(for x : AnyObject) -> Int?
    
    func Insert(in x : AnyObject) -> Int?
    
    func remove(in x : AnyObject) -> Int?
    
    func update(element x : AnyObject, in y : AnyObject) -> Int?
}

//Ordenado evitar alterar el orden al insertar nuevos elementos o al modificar los exitentes
//Insertar verificar espacio, contorar la posisiocn para no alterar el orden //no info duplicda
//Eliminar buscar la posicion del elemento a eliminar,
//Coleccion finita , homogenea y ordenada de elementos
