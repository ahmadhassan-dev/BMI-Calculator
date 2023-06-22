//
//  SecondViewController.swift
//  BMI-Calculator
//
//  Created by mac on 22/06/2023.
//

import UIKit

class SecondViewController: UIViewController{
    var bmi = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        let label = UILabel()
        label.text=bmi
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        view.addSubview(label)
        
    }
}
