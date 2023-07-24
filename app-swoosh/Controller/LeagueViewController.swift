//
//  LeagueViewController.swift
//  app-swoosh
//
//  Created by Long, Nguyen Duc on 24/07/2023.
//

import UIKit

class LeagueViewController: UIViewController {
    var player : Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextClick(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }

    @IBAction func onMensClick(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    
    @IBAction func onWomensClick(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedClick(_ sender: Any) {
        selectLeague(leagueType: "coed")    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    // Note: prepareForSegue is always called before viewDidLoad
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillCV = segue.destination as? SkillViewController {
            skillCV.player = self.player
        }
    }

}
