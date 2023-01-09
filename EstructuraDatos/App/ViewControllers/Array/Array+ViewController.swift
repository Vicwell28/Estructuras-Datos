//
//  Array+ViewController.swift
//  EstructuraDatos
//
//  Created by soliduSystem on 06/01/23.
//

import UIKit

class Array_ViewController: UIViewController {

    // MARK: - Override Func
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    @IBAction func tapGestureRecognizer(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    let PruebaArray = UnorderedOneDimensionalArray(size: 10)
    
    // MARK: - IBOutlet
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textFieldX: UITextField!
    @IBOutlet weak var textFieldY: UITextField!
    
    // MARK: - IBAction
    @IBAction func Insertar(_ sender: UIButton) {
        
        if let i = self.PruebaArray.Insert(in: Int(self.textFieldX.text!)!) {
            self.textView.text = "POTITION : \(i)  \n\(self.PruebaArray.readAll())"
        }
        
    }
    
    @IBAction func Buscar(_ sender: UIButton) {
        
        if let i = self.PruebaArray.search(for: Int(self.textFieldX.text!)!) {
            self.textView.text = "POTITION : \(i)  \n\(self.PruebaArray.readAll())"
        }
        
    }
    
    @IBAction func Eliminar(_ sender: UIButton) {

        if let i = self.PruebaArray.remove(in: Int(self.textFieldX.text!)!) {
            self.textView.text = "POTITION : \(i)  \n\(self.PruebaArray.readAll())"
        }
        
    }
    
    @IBAction func Actualizar(_ sender: UIButton) {

        if let (i, j) = self.PruebaArray.update(element: Int(self.textFieldX.text!)!, in: Int(self.textFieldY.text!)!) as? (Int, Int){
            self.textView.text = "POTITION : \(i) \nUPDATE : \(j)  \n\(self.PruebaArray.readAll())"
        }
        
    }
    
    
    
}

// MARK: - Public Func
extension Array_ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

// MARK: - Private Func
extension Array_ViewController {
    
}

// MARK: - Services
extension Array_ViewController {
    
}

// MARK: - Other
extension Array_ViewController {
    
}
