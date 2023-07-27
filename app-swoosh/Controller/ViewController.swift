//
//  ViewController.swift
//  app-swoosh
//
//  Created by DucLong on 24/07/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hourLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0,
                                             width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor  = UIColor.orange
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(UIColor.red, for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: UIControl.Event.touchUpInside)
        
        priceTxt.inputAccessoryView = calcBtn
        wageTxt.inputAccessoryView = calcBtn
        resultLbl.isHidden = true
        hourLbl.isHidden = true
    }
    
    @objc func calculate(){
        if let wageTxt = self.wageTxt.text, let priceTxt = self.priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hourLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any){
        resultLbl.isHidden = true
        hourLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
