//
//  ViewController.swift
//  PickerViewHomeWork
//
//  Created by Yura Menschikov on 11/3/18.
//  Copyright © 2018 Yura Menschikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backGroungImage1 = UIImageView(image: #imageLiteral(resourceName: "Old tracks iPhone 6 Wallpapers.jpg"))
    
    let datePicker = UIDatePicker()
    
    let clientButton = UIButton()
    let developerButton = UIButton()
    
    let mainLabel = UILabel()
    let dateLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backGroungImage1.frame = self.view.frame
        self.navigationController?.navigationBar.isHidden = true
        datePicker.frame = CGRect(x: 37, y: 100, width: 300, height: 50)
        datePicker.datePickerMode = .date
        editLabel(label: dateLabel, x: 37, y: 40, widthOf: 300, heightOf: 50, backColor: .white, textColor: .black, alignment: .center, text: "Date protect")
        editButton(buttonEditor: clientButton, x: 37, y: 230, widthOf: 300, heightOf: 50, backColour: .darkGray, titleColour: .white, title: "Client mode")
        editButton(buttonEditor: developerButton, x: 37, y: 290, widthOf: 300, heightOf: 50, backColour: .darkGray, titleColour: .white, title: "Dev mode")
        
        datePicker.addTarget(self, action: #selector(setDate(someData:)), for: .valueChanged)
        clientButton.addTarget(self, action: #selector(goToClient(someClient:)), for: .touchUpInside)
        developerButton.addTarget(self, action: #selector(goToDev(someDev:)), for: .touchUpInside)
        
        self.view.addSubview(backGroungImage1)
        self.view.addSubview(datePicker)
        self.view.addSubview(dateLabel)
        self.view.addSubview(clientButton)
        self.view.addSubview(developerButton)
    }
    
    @objc func setDate(someData: UIDatePicker) {
        let formate = DateFormatter()
        formate.dateFormat = "dd-MM-YYYY"
        self.dateLabel.text = formate.string(from: datePicker.date)
    }
    
    @objc func goToClient(someClient: UIButton){
        let clientController = ClientViewController()
        self.navigationController?.pushViewController(clientController, animated: true)
        print(clientController)
    }
    @objc func goToDev(someDev: UIButton){
        let developerController = DeveloperViewController()
        self.navigationController?.pushViewController(developerController, animated: true)
        print(developerController)
    }
}


/*
 FIRST PART HOMEWORK
 
@objc func FirstHomeWork() {
    let datePicker = UIDatePicker()
    let timePicker = UIDatePicker()
    
    let dateLabel = UILabel()
    let timeLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        datePicker.frame = CGRect(x: 37, y: 40, width: 300, height: 50)
        timePicker.frame = CGRect(x: 37, y: 140, width: 300, height: 50)
        editLabel(label: dateLabel, x: 37, y: 90, widthOf: 300, heightOf: 50, backColor: .black, textColor: .white, alignment: .center, text: "your date")
        editLabel(label: timeLabel, x: 37, y: 190, widthOf: 300, heightOf: 50, backColor: .darkGray, textColor: .white, alignment: .center, text: "your time")
        datePicker.datePickerMode = .date
        timePicker.datePickerMode = .time
        datePicker.addTarget(self, action: #selector(setDate(someData:)), for: .valueChanged)
        timePicker.addTarget(self, action: #selector(setTime(someTime:)), for: .valueChanged)
        view.addSubview(dateLabel)
        view.addSubview(datePicker)
        view.addSubview(timeLabel)
        view.addSubview(timePicker)
    }
    
    @objc func setDate(someData: UIDatePicker) {
        let formate = DateFormatter()
        formate.dateFormat = "dd-MM-yyyy"
        dateLabel.text = formate.string(from: datePicker.date)
    }
    
    @objc func setTime(someTime: UIPickerView){
        let format = DateFormatter()
        format.timeStyle = .short
        let time = format.string(from: timePicker.date)
        let alert = UIAlertController(title: "Time notification", message: "your time is \(time)", preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(actionAlert)
        present(alert, animated: true, completion: nil)
        timeLabel.text = format.string(from: timePicker.date)
    }
}
*/
