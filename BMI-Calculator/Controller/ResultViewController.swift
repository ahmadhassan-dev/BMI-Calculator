//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by mac on 22/06/2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmiText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiText.text = bmiValue
    }
    
}
