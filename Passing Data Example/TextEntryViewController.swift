//
//  TextEntryViewController.swift
//  Passing Data Example
//
//  Created by Daniel Pratt on 3/1/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

import UIKit

class TextEntryViewController: UIViewController, UITextFieldDelegate {
    
    var text: String?
    
    @IBOutlet weak var textField: UITextField!
    
    // As long as it isn't nil, sets up placeholder text
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.delegate = self
        if let text = text {
            textField.placeholder = text
        }
        
    }

    // Sends back whatever text the user entered back to the other view controller
    @IBAction func setLabelButtonTapped(_ sender: Any) {
        let viewVC = presentingViewController as! ViewController
        viewVC.text = textField.text!
        self.dismiss(animated: true, completion: nil)
    }
    
    // Clears out placeholder and any existing text whenever the user taps into text field
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // Clear anything out first
        textField.text = ""
        textField.placeholder = ""
    }

    // Gets rid of the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
