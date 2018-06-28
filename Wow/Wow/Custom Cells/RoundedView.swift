//
//  RoundedView.swift
//  Wow
//
//  Created by Ghanshyam Jain on 12/06/18.
//  Copyright © 2018 i4solutions. All rights reserved.
//

import UIKit

class RoundedView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.clear.cgColor
        
        //TODO: Code for our button
    }
    
}
