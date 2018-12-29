//
//  ViewController.swift
//  AllAboutMe
//
//  Created by Harsh Tuwar on 2018-12-28.
//  Copyright © 2018 HarshTuwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultText: UITextView!
    
    @IBOutlet weak var programSelector: UISegmentedControl!
    
    @IBOutlet weak var levelSelector: UISegmentedControl!
    
    @IBOutlet weak var gpaSelector: UISlider!
    
    @IBOutlet weak var gpaInput: UITextField!
    
    var prg_seg_opt: String = "";
    
    
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        updateResultText()
    }
    
    
    @IBAction func gpaInputChanged(_ sender: Any) {
//        print("Change in gpaInputChange");
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
        
        // Get and store the program selected
        
    
        // Get and store the level selected
        
        // Get and store the gpa value
        
        // Assemble the string for the text view
        resultText.text = "I am a \(prg) student in Seneca College. Currently, I am in my Level \(sem) with \(gpa) GPA score."
    }
 
}

