//
// LoginViewController.swift
//  Chat App
//
//  Created by Darvin Sinaga on 12/07/19.
//  Copyright © 2019 Darvin Sinaga. All rights reserved.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {
    
    @IBOutlet weak var Password: PaddingTextField!
    @IBOutlet weak var LoginField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LoginField.layer.cornerRadius = 20
        Password.layer.cornerRadius = 20
        loginBtn.layer.cornerRadius=25
    }
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signIn(withEmail: LoginField.text!, password: Password.text!) { (user, error) in
            if error != nil {
                print("error")
            }
            else{
                self.performSegue(withIdentifier: "home", sender: self)
            }
        }
    }
    
}
