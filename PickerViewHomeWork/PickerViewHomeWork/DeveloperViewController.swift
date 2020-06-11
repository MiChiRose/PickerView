//
//  DeveloperViewController.swift
//  PickerViewHomeWork
//
//  Created by Yura Menschikov on 11/5/18.
//  Copyright © 2018 Yura Menschikov. All rights reserved.
//

import UIKit

class DeveloperViewController: UIViewController {
    
    let backGroungImage3 = UIImageView(image: #imageLiteral(resourceName: "7fbec081503ed4f58ffaaa2313aa95d1.jpg"))
    
    let nameTextField = UITextField()//
    let surnameTextField = UITextField()//
    let bankPasswordTextField = UITextField()//
    let passwordTextField = UITextField()//
    let eMailTextField = UITextField()//
    let professionTextField = UITextField()
    let expirienceTextField = UITextField()
    let languageProgramingTextField = UITextField()
    
    let backButton2 = UIButton()
    let saveButton2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backGroungImage3.frame = view.frame
        
        editTextField(textField: nameTextField, x: 37, y: 100, widthOf: 300, heightOf: 30, placeName: "name")
        editTextField(textField: surnameTextField, x: 37, y: 160, widthOf: 300, heightOf: 30, placeName: "surname")
        editTextField(textField: passwordTextField, x: 37, y: 220, widthOf: 300, heightOf: 30, placeName: "password")
        editTextField(textField: bankPasswordTextField, x: 37, y: 280, widthOf: 300, heightOf: 30, placeName: "bank pass")
        editTextField(textField: eMailTextField, x: 37, y: 340, widthOf: 300, heightOf: 30, placeName: "e-mail")
        editTextField(textField: professionTextField, x: 37, y: 400, widthOf: 300, heightOf: 30, placeName: "profession")
        editTextField(textField: expirienceTextField, x: 37, y: 460, widthOf: 300, heightOf: 30, placeName: "work expirience")
        editTextField(textField: languageProgramingTextField, x: 37, y: 520, widthOf: 300, heightOf: 30, placeName: "programming language")
        editButton(buttonEditor: backButton2, x: 37, y: 37, widthOf: 100, heightOf: 50, backColour: .darkGray, titleColour: .white, title: "Back")
        editButton(buttonEditor: saveButton2, x: 37, y: 600, widthOf: 300, heightOf: 50, backColour: .red, titleColour: .white, title: "Save data")
        
        editButton(buttonEditor: backButton2, x: 37, y: 37, widthOf: 100, heightOf: 50, backColour: .darkGray, titleColour: .white, title: "Back")
        self.backButton2.addTarget(self, action: #selector(goBackButton(goBack:)), for: .touchUpInside)
        saveButton2.addTarget(self, action: #selector(calculateThings(_:)), for: .touchUpInside)
        
        self.view.addSubview(backGroungImage3)
        
        // here
        self.view.addSubview(saveButton2)
        self.view.addSubview(backButton2)
        self.view.addSubview(nameTextField)
        self.view.addSubview(surnameTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(bankPasswordTextField)
        self.view.addSubview(eMailTextField)
        self.view.addSubview(professionTextField)
        self.view.addSubview(expirienceTextField)
        self.view.addSubview(languageProgramingTextField)
        
    }
    
    @objc func calculateThings(_ textfield: UIButton){
        if nameTextField.text!.isEmpty || surnameTextField.text!.isEmpty || passwordTextField.text!.isEmpty || bankPasswordTextField.text!.isEmpty || eMailTextField.text!.isEmpty || professionTextField.text!.isEmpty || languageProgramingTextField.text!.isEmpty || expirienceTextField.text!.isEmpty {
            let alertButton = UIAlertController(title: "Warning!", message: "Your data is empty. Please, check your data raws", preferredStyle: .alert)
            let alertButtonAction = UIAlertAction(title: "Understood", style: .default, handler: nil)
            alertButton.addAction(alertButtonAction)
            self.present(alertButton, animated: true, completion: nil)
        } else {
            let goodAlert = UIAlertController(title: "Save data sucsessed", message: "your data \n \(String(nameTextField.text!)) \n \(String(surnameTextField.text!)) \n \(String(passwordTextField.text!)) \n \(String(bankPasswordTextField.text!)) \n \(String(eMailTextField.text!)) \n \(String(professionTextField.text!)) \n \(String(expirienceTextField.text!)) \n \(String(languageProgramingTextField.text!)) \n are saved.", preferredStyle: .alert)
            let goodAlertAction = UIAlertAction(title: "Good", style: .default, handler: nil)
            goodAlert.addAction(goodAlertAction)
            self.present(goodAlert, animated: true, completion: nil)
        }
    }
    
    @objc func goBackButton (goBack: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
}
