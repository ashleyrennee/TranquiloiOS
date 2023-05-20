//
//  SignInViewController.swift
//  Tranquilo
//
//  Created by Ashley Acevedo on 3/9/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signInPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password){
                authResult, error in
                if let err = error{
                    print(err.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: "signinPressed", sender: self)
                }
            }
        }
        
    }
    
}
