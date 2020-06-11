//
//  ClientViewController.swift
//  PickerViewHomeWork
//
//  Created by Yura Menschikov on 11/5/18.
//  Copyright © 2018 Yura Menschikov. All rights reserved.
//

import UIKit

class ClientViewController: UIViewController {
    
    let backGroundImage2 = UIImageView(image: #imageLiteral(resourceName: "7fbec081503ed4f58ffaaa2313aa95d1.jpg"))
    
    let backButton1 = UIButton()
    let saveButton1 = UIButton()
    
    let nameTextField = UITextField()
    let surnameTextField = UITextField()
    let bankPasswordTextField = UITextField()
    let passwordTextField = UITextField()
    let eMailTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        editTextField(textField: nameTextField, x: 37, y: 100, widthOf: 300, heightOf: 30, placeName: "name")
        editTextField(textField: surnameTextField, x: 37, y: 160, widthOf: 300, heightOf: 30, placeName: "surname")
        editTextField(textField: passwordTextField, x: 37, y: 220, widthOf: 300, heightOf: 30, placeName: "password")
        editTextField(textField: bankPasswordTextField, x: 37, y: 280, widthOf: 300, heightOf: 30, placeName: "bank pass")
        editTextField(textField: eMailTextField, x: 37, y: 340, widthOf: 300, heightOf: 30, placeName: "e-mail")
        editButton(buttonEditor: backButton1, x: 37, y: 37, widthOf: 100, heightOf: 50, backColour: .darkGray, titleColour: .white, title: "Back")
        editButton(buttonEditor: saveButton1, x: 37, y: 600, widthOf: 300, heightOf: 50, backColour: .red, titleColour: .white, title: "Save data")
        
        backButton1.addTarget(self, action: #selector(goBackMainMenu(goBackButton:)), for: .touchUpInside)
        saveButton1.addTarget(self, action: #selector(calculateThings(_:)), for: .touchUpInside)
        
        self.view.addSubview(backGroundImage2)
        
        self.view.addSubview(saveButton1)
        self.view.addSubview(backButton1)
        self.view.addSubview(nameTextField)
        self.view.addSubview(surnameTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(bankPasswordTextField)
        self.view.addSubview(eMailTextField)
        
    }
    @objc func calculateThings(_ textfield: UIButton){
        if nameTextField.text!.isEmpty || surnameTextField.text!.isEmpty || passwordTextField.text!.isEmpty || bankPasswordTextField.text!.isEmpty || eMailTextField.text!.isEmpty {
            let alertButton = UIAlertController(title: "Warning!", message: "Your data is empty. Please, check your data raws", preferredStyle: .alert)
            let alertButtonAction = UIAlertAction(title: "Understood", style: .default, handler: nil)
            alertButton.addAction(alertButtonAction)
            self.present(alertButton, animated: true, completion: nil)
        } else {
            let goodAlert = UIAlertController(title: "Save data sucsessed", message: "your data \n \(String(nameTextField.text!)) \n \(String(surnameTextField.text!)) \n \(String(passwordTextField.text!)) \n \(String(bankPasswordTextField.text!)) \n \(String(eMailTextField.text!)) \n are saved.", preferredStyle: .alert)
            let goodAlertAction = UIAlertAction(title: "Good", style: .default, handler: nil)
            goodAlert.addAction(goodAlertAction)
            self.present(goodAlert, animated: true, completion: nil)
        }
    }
    
    //MARK: - func return in ViewController
    @objc func goBackMainMenu(goBackButton: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
}
