//
//  ViewController.swift
//  BMI-Calculator-ios14
//
//  Created by 程式猿 on 2021/2/25.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var h: Float = 0.0
    var w: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value)) m"
        h = sender.value
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value)) Kg"
        w = sender.value
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        calculatorBrain.calculateBMI(weight: w, height: h)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            
            let dtVC = segue.destination as! SecondViewController
            dtVC.bmiValue = Double(calculatorBrain.getBMIValue())
            dtVC.advice = calculatorBrain.getAdvice()
            dtVC.color = calculatorBrain.getColor()
            
            
        }
        
    }
    
    
}

