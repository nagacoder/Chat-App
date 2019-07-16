//
//  RegisterViewController.swift
//  Chat App
//
//  Created by Darvin Sinaga on 14/07/19.
//  Copyright © 2019 Darvin Sinaga. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailField: PaddingTextField!
    @IBOutlet weak var passWordField: PaddingTextField!
    @IBOutlet weak var RegisterButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.layer.cornerRadius = 20
        passWordField.layer.cornerRadius = 20
        RegisterButton.layer.cornerRadius = 25
    }
    
    @IBAction func regiter(_ sender: Any) {
//        print(emailField.text!,passWordField.text!)
        Auth.auth().createUser(withEmail: emailField.text!, password: passWordField.text!) { (user, error) in
            if error != nil {
                print("somthing wrong")

            }else{
                print("klik")
                self.performSegue(withIdentifier: "goToLogin", sender: self)
            }
        }
        
    }
    
}
