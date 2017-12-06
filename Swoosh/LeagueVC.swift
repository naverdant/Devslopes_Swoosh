//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Perfect on 2017/12/6.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player : Player!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }


    @IBAction func onMensTapped(_ sender: UIButton) {
        selectLeague("Mens")
    }

    @IBAction func onWomensTapped(_ sender: UIButton) {
        selectLeague("Womens")
    }
    
    @IBAction func onCoedTapped(_ sender: UIButton) {
        selectLeague("Coed")
    }
    
    @IBAction func onNextTapped(_ sender: UIButton) {
//        performSegue(withIdentifier: "Show third segue", sender: sender)
        
        if let skillVC = storyboard?.instantiateViewController(withIdentifier: "SkillVC") as? SkillVC {
            skillVC.player = player
            present(skillVC, animated: true, completion: nil)
        }
    }
    
    func selectLeague(_ league: String) {
        player.desiredLeague = league
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

    @IBAction func unwindFromSkillVC(sender: UIStoryboardSegue) {
        print("UNWIND from SkillVC")
    }
    
}
