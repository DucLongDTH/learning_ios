//
//  ViewController.swift
//  app-swoosh
//
//  Created by DucLong on 24/07/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profileLogo.layer.cornerRadius = 8.0
    }

}
