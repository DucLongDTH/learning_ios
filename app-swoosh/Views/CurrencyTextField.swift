//
//  CurrencyTextField.swift
//  app-swoosh
//
//  Created by DucLong on 25/07/2023.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
        
    override func prepareForInterfaceBuilder() {
        customizeUI()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeUI()
    }
    
    func customizeUI(){
        // #colorLiteral() to picker color
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 8.0
        textAlignment = .center
        clipsToBounds = true
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    override func draw(_ rect: CGRect) {
        createSymbolCurrency()
    }
    
    func createSymbolCurrency(){
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x:  5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = UIColor.gray.withAlphaComponent(CGFloat(25.0))
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = UIColor.darkGray
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text  = formatter.currencySymbol
        addSubview(currencyLbl)
    }
}
