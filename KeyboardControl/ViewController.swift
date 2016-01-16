//
//  ViewController.swift
//  KeyboardControl
//
//  Created by Mehmet Ragıp Altuncu on 15/01/16.
//  Copyright © 2016 MehmetAltuncu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField.delegate = self
    }



    @IBAction func buttonPressed(sender: UIButton) {
        
        labelText.text = textField.text
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    
    }
    
}

