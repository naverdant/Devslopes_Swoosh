//
//  ExtButton.swift
//  Swoosh
//
//  Created by Perfect on 2017/12/5.
//  Copyright © 2017年 Alex. All rights reserved.
//

import UIKit

class ExtButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
    }
    

}
