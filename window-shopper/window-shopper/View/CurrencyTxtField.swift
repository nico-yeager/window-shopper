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
    
    //create subview to show in left corner of textview
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8592997193, green: 0.8541920781, blue: 0.8632262349, alpha: 0.8023062928)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
        
    }
    
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
        clipsToBounds = true
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
