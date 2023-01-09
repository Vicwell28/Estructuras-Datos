//
//  IBInspectable+Extension.swift
//  EstructuraDatos
//
//  Created by soliduSystem on 06/01/23.
//

import UIKit

extension UIView {
    @IBInspectable var shadowColor : UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            layer.shadowColor = newValue?.cgColor
        }
    }
    @IBInspectable var shadowOpacity : Float{
        get {
            return layer.shadowOpacity
        }
        set{
            layer.shadowOpacity = newValue
        }
    }
    @IBInspectable var shadowOffset : CGSize{
        get {
            return layer.shadowOffset
        }
        set{
            layer.shadowOffset = newValue
        }
    }
    @IBInspectable var maskToBounds : Bool{
        get {
            return layer.masksToBounds
        }
        set{
            layer.masksToBounds = newValue
        }
    }
    @IBInspectable var cornerRadius : CGFloat{
        get {
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
        }
    }
    @IBInspectable var borderWidth : CGFloat{
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth =  newValue
        }
    }
    @IBInspectable var borderColor : UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}
// MARK: - Override Func
// MARK: - Public Let / Var
// MARK: - Private Let / Var
// MARK: - IBOutlet
// MARK: - IBAction
// MARK: - Public Func
// MARK: - Private Func
// MARK: - Services
// MARK: - Other
