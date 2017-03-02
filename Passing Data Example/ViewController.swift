//
//  ViewController.swift
//  Passing Data Example
//
//  Created by Daniel Pratt on 3/1/17.
//  Copyright © 2017 Daniel Pratt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var text = "Hello World"
    // MARK: IBOutlet
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Setting text label to \(text)")
        textLabel.text = text
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let entryVC = storyboard?.instantiateViewController(withIdentifier: "TextEntry") as! TextEntryViewController
        entryVC.text = self.text
        present(entryVC, animated: true, completion: nil)
    }


}

