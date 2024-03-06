//
//  ViewController.swift
//  BMI Calculator
//  Created by Dana Sami Abu Eid on 06/01/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hieghtBar: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var highetLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculateBMI = CalculaterBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    @IBAction func SliderChanged(_ sender: UISlider) {
        
       
        let highetValue = String (format: "%.2f", hieghtBar.value)
        let weightValue = String (format: "%.2f", weightSlider.value)
        highetLabel.text = "\(highetValue)m"
        weightLabel.text = "\(weightValue)kg"
        
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let highet = hieghtBar.value
        let weight = weightSlider.value
        calculateBMI.calculateBMI(height: highet, Weight: weight)
        performSegue(withIdentifier: "nextToResult", sender: self)
     
    }


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nextToResult" {
                  let destinationVC = segue.destination as! SeconedViewController
                  destinationVC.bmiValue = calculateBMI.getBmiValue()
                  destinationVC.advice = calculateBMI.getAdvice()
                  destinationVC.color = calculateBMI.getColor()
              }
    }

    
}

