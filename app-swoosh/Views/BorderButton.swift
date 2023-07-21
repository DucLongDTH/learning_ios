//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Long, Nguyen Duc on 21/07/2023.
//

import UIKit
	
class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
