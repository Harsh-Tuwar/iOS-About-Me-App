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
    }

    
    @IBAction func programChanged(_ sender: Any) {
        print("Change in program");
        if programSelector.selectedSegmentIndex == 0 {
            prg_seg_opt = "CPA"
        } else {
            prg_seg_opt = "BSD"
        }
        
    }
    
    
    @IBAction func levelChanged(_ sender: Any) {
        print("Change in level");
    }
    
    
    @IBAction func gpaSelectorChanged(_ sender: Any) {
        print("Change in gpaSelector");
    }
    
    
    @IBAction func gpaInputChanged(_ sender: Any) {
        print("Change in gpaInputChange");
    }
    
    
    func updateResultText() {
        
        // Read the results from the user interface controls...
        
        
        
        // Get and store the program selected
       
        
        
        // Get and store the level selected
        
        // Get and store the gpa value
        
        // Assemble the string for the text view
        
       // resultText = "I am a " + prg_seg_opt + "student in Seneca College. Currently, I am in my level5 with 3.2 GPA score.";
        
    }

    
}

