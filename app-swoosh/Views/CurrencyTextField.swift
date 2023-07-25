//
//  CurrencyTextField.swift
//  app-swoosh
//
//  Created by DucLong on 25/07/2023.
//

import UIKit

class CurrencyTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        // #colorLiteral() to picker color
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 8.0
        textAlignment = .center

        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
        
    }
}
