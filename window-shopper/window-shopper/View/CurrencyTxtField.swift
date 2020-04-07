//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Nico Yeager on 4/6/20.
//  Copyright © 2020 Nico Yeager. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    //right now, the second text field type (Item price) is also inheriting from this class. need to see what mark does in the next tutorial.  He may create a different class within a different file to have that text field inherit from.  he may create the class within this swift file and change the name.  not sure what is best practice... yet
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    override func prepareForInterfaceBuilder() {
        // some code here to make the changes be updated in the story board
        customizeView()
    }
    
    //how we modified/customized the UITextField class to be a subclass called "CurrencyTxtField"
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2523009418)
        layer.cornerRadius = 5.0
        textAlignment = .center
        // if placeholder text is not nil, then set color of text to white.
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
