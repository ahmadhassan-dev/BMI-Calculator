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
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        var height = String(format: "%.2f", sender.value)
        heightText.text = "\(height)m"
    }
    

    @IBAction func weightSlider(_ sender: UISlider) {
        var weight = String(format: "%.0f", sender.value)
        weightText.text = "\(weight)g"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        var weightInKgs = weight*1000
        var heightInM2 = height*height
        
        var bmi = weightInKgs/heightInM2
        print(bmi)
    }
    
}

