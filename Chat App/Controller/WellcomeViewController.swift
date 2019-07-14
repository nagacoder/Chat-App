//
//  ViewController.swift
//  Chat App
//
//  Created by Darvin Sinaga on 12/07/19.
//  Copyright © 2019 Darvin Sinaga. All rights reserved.
//

import UIKit

class WellcomeViewController: UIViewController {

        @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var RegisterButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LoginButton.layer.cornerRadius=25
        RegisterButton.layer.cornerRadius=25
    }


}
