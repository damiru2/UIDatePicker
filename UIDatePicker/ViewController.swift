//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Damir Chalkarov on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.preferredDatePickerStyle = .wheels
        picker.datePickerMode = .dateAndTime
        picker.minuteInterval = 5
    }


    @IBAction func pickerAction(_ sender: UIDatePicker) {
        print(sender.date)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d, yyyy HH:mm:ss"
        formatter.timeZone = TimeZone.current
        print(formatter.string(from: sender.date))
        
    }
    
    
}

