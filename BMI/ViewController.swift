//
//  ViewController.swift
//  BMI
//
//  Created by Release on 2016. 3. 30..
//  Copyright © 2016년 Kang-Woo Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

}

