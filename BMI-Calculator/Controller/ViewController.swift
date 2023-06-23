//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by mac on 21/06/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

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
        
        calculatorBrain.calculate(height:height,weight:weight)
        
      
        self.performSegue(withIdentifier: "goToResult", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
             destinationVC.bmiValue = String(format:"%.2f",calculatorBrain.getBmi())
        }
    }
    
}

