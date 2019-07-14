//
// LoginViewController.swift
//  Chat App
//
//  Created by Darvin Sinaga on 12/07/19.
//  Copyright © 2019 Darvin Sinaga. All rights reserved.
//

import UIKit

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
    
    
}
