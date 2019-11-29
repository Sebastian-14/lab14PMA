//
//  LoginViewController.swift
//  lab13
//
//  Created by Sebastian on 11/14/19.
//  Copyright © 2019 Sebastian. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClickButton(_ sender: Any) {
        print("Login button clicked")
        
        if (usernameTextField.text != "" && passwordTextField.text != "") {
            Auth.auth().signIn(withEmail: usernameTextField.text!, password: passwordTextField.text!){
                (user, error) in
                if (user != nil) {
                    print("User authenticated")
                    self.presentingViewController?.dismiss(animated: true, completion: nil)
                } else {
                    print("There was an error")
                    self.errorLabel.isHidden = false
                }
            }
        } else {
            print("There was an error")
            errorLabel.isHidden = false
        }
        
    }

}
