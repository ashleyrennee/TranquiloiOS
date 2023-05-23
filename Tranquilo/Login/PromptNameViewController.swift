//
//  PromptNameViewController.swift
//  Tranquilo
//
//  Created by Ashley Acevedo on 4/28/23.
//

import UIKit
import FirebaseFirestore

class PromptNameViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textFieldLine = CALayer()
        textFieldLine.frame = CGRect(x: 0, y: nameField.frame.height-2, width: nameField.frame.width, height: 0.5)
        
        textFieldLine.backgroundColor = CGColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)
        
        nameField.layer.addSublayer(textFieldLine)
    }
    
 

}
