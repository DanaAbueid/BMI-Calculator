//
//  SeconedViewController.swift
//  BMI Calculator
//
//  Created by Dana Sami Abu Eid on 06/01/2024.

import UIKit

class SeconedViewController: UIViewController {
    
    var bmiValue: String?
     var advice: String?
     var color: UIColor?

    @IBOutlet weak var BmiLabel: UILabel!
    @IBOutlet weak var advaiceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BmiLabel.text = bmiValue
        advaiceLabel.text = advice
        view.backgroundColor = color
    }
    
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
