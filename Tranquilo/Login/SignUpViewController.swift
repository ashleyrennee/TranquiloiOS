//
//  SignUpViewController.swift
//  Tranquilo
//
//  Created by Ashley Acevedo on 3/9/23.
//

import UIKit
import FirebaseCore
import FirebaseAuth



class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        if let email = emailTextField.text ,let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let err = error{
                    print(err.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: "signUpPressed", sender: self)
                }
            }
        }
        

    }
    
    
}
