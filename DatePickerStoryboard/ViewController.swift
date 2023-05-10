//
//  ViewController.swift
//  DatePickerStoryboard
//
//  Created by Roro Solutions on 09/05/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DatePicker.preferredDatePickerStyle = .compact
        DatePicker.locale = .current
        DatePicker.date = Date()
        DatePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)
       
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnSegTapped(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            DatePicker.preferredDatePickerStyle = .compact
        case 1:
            DatePicker.preferredDatePickerStyle = .inline
        case 2:
            DatePicker.preferredDatePickerStyle = .wheels
        default:
            break
        }
    }
    
    @objc func dateSelected() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        let date = dateFormatter.string(from: DatePicker.date)
        myLabel.text = date
    }
    
    
}

