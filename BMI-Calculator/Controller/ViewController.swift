//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by mac on 21/06/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        heightText.text = sender.value.description
    }
    

    @IBAction func weightSlider(_ sender: UISlider) {
        weightText.text = sender.value.description
    }
}

