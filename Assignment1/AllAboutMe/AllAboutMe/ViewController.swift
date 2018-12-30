//
//  ViewController.swift
//  AllAboutMe
//
//  Created by Harsh Tuwar on 2018-12-28.
//  Copyright © 2018 HarshTuwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var resultText: UITextView!
    
    @IBOutlet weak var programSelector: UISegmentedControl!
    
    @IBOutlet weak var levelSelector: UISegmentedControl!
    
    @IBOutlet weak var gpaSelector: UISlider!
    
    @IBOutlet weak var gpaInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        gpaInput.text = String(format: "%1.2f", gpaSelector.value)
        
        updateResultText()
       
    }

    
    @IBAction func programChanged(_ sender: Any) {
      //  print("Change in program");
        updateResultText()
    }
    
    
    @IBAction func levelChanged(_ sender: Any) {
//        print("Change in level");
        updateResultText()
    }
     
    
    @IBAction func gpaSelectorChanged(_ sender: Any) {
//        print("Change in gpaSelector");
        gpaInput.text = String(format: "%1.2f", gpaSelector.value)
//        if ( gpaSelector.value >= 4 ){
//            gpaInput.text = "4"
//        } else if(gpaSelector.value <= 2){
//            gpaInput.text = "2"
//        }
        updateResultText()
    }
    
    
    @IBAction func gpaInputChanged(_ sender: Any) {
//        print("Change in gpaInputChange");
        let val = (gpaInput.text! as NSString).floatValue
        gpaSelector.value = val
//        if ( val >= 4 ){
//            gpaSelector.value = 4
//        } else if(val <= 2){
//            gpaSelector.value = 2
//        }
        updateResultText()
    }
    
//    optional func textView(_ textView: NSTextView,
//                           shouldChangeTextIn affectedCharRange: NSRange,
//                           replacementString: ) -> Bool

    
    @IBAction func updateResultText() {
        
        // Read the results from the user interface controls...
        let prg = (programSelector.selectedSegmentIndex == 0) ? "CPA" : "BSD"
        let sem = levelSelector.selectedSegmentIndex + 3
        let gpa = String(format: "%1.2f", gpaSelector.value)
        
//        if ( gpaSelector.value >= 4 ){
//            gpa = "4"
//        } else if(gpaSelector.value <= 2){
//            gpa = "2"
//        }
//
        // Get and store the program selected
        
    
        // Get and store the level selected
        
        // Get and store the gpa value
        
        // Assemble the string for the text view
        resultText.text = "I am a \(prg) student in Seneca College. Currently, I am in my Level \(sem) with \(gpa) GPA score."
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
 
}

