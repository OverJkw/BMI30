//
//  ViewController.swift
//  BMI
//
//  Created by Release on 2016. 3. 30..
//  Copyright © 2016년 Kang-Woo Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    var Weight : Double? = 0.0
    var Height : Double? = 0.0
    
    var bmi : Double? {
        
        get {
            
            if (Weight != nil) && (Height != nil){
                
                return Weight! / (Height! * Height!)
            }
            else{
                return nil
            }
        }
    }
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField)->Bool{
        textField.resignFirstResponder()
        return true
    }
    
    //Update UI
    func updateUI(){
        if let b = self.bmi {
            self.bmiLabel.text = String(format: "%4.1f",b)
        }
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        
        guard let txt: String = textField.text else{
         return
        }
        
        
        func conv(numString: String) -> Double? {
            
            let result : Double? = NSNumberFormatter().numberFromString(numString)?.doubleValue
            
            return result
        }
        
            switch(textField){
                
            case heightTextField:
                self.Height = conv(txt)
            case weightTextField:
                self.Weight = conv(txt)
            default:
                print("Something Wrong")
            }
         updateUI()
    }

}

