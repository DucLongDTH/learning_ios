//
//  ListyVC.swift
//  app-swoosh
//
//  Created by Long, Nguyen Duc on 01/08/2023.
//

import UIKit

class ListyVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallaxCell", for: indexPath) as? ParallaxCell else {
            return ParallaxCell()
        }
        
        cell.configCell(withImage: imageArray[indexPath.row]!, andDescription: nameArray[indexPath.row])
        return cell
    }

}
