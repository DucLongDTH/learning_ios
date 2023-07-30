//
//  CategoryCell.swift
//  app-swoosh
//
//  Created by DucLong on 30/07/2023.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imgName)
        categoryTitle.text = category.title
    }

}
