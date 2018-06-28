//
//  SideMenuViewCell.swift
//  DealApp
//
//  Created by Ghanshyam on 8/2/16.
//  Copyright © 2016 DS4U01. All rights reserved.
//

import UIKit

class SideMenuViewCell: UITableViewCell {
    
    @IBOutlet var lblIcon:UILabel!
    @IBOutlet var lblMenu:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
