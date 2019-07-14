//
//  PaddingTextField.swift
//  Chat App
//
//  Created by Darvin Sinaga on 14/07/19.
//  Copyright © 2019 Darvin Sinaga. All rights reserved.
//

import UIKit
class PaddingTextField: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

}
