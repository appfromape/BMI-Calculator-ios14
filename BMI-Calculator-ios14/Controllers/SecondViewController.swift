//
//  SecondViewController.swift
//  BMI-Calculator-ios14
//
//  Created by 程式猿 on 2021/2/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var resultBMI: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue = 0.0
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultBMI.text = String(format: "%.2f", bmiValue)
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
