//
//  ParallaxCell.swift
//  app-swoosh
//
//  Created by Long, Nguyen Duc on 01/08/2023.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var bgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configCell(withImage image: UIImage, andDescription desc: String){
        labelView.text = desc
        bgView.image = image
    }
    
    func setupParallax(){
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        bgView.addMotionEffect(motionEffectGroup)
    }

}
