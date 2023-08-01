//
//  ViewController.swift
//  app-swoosh
//
//  Created by DucLong on 24/07/2023.
//

import UIKit
import CoreMotion

class AccelerometerVC: UIViewController {
    
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabel)
    }
    
    func updateLabel(data: CMAccelerometerData?, error: Error?){
        guard let accler = data else {
            return
        }
        print(accler)
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        
        let x = formatter.string(for: accler.acceleration.x)!
        let y = formatter.string(for:accler.acceleration.y)!
        let z = formatter.string(for:accler.acceleration.z)!
        
        xLabel.text = "X: \(x)"
        yLabel.text = "Y: \(y)"
        zLabel.text = "Z: \(z)"
    }
    
}
