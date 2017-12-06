//
//  WelcomeVC.swift
//  Swoosh
//
//  Created by Perfect on 2017/12/5.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func showDesired(_ sender: UIButton) {
        performSegue(withIdentifier: "Show league segue", sender: sender)
    }
    
    @IBAction func unwindFromLeagueVC(_ unwind: UIStoryboardSegue) {
        print("UNWIND from LeagueVC")
    }
}

