//
//  ItemTableViewCell.swift
//  NibFilePractice
//
//  Created by Michelle Grover on 11/15/19.
//  Copyright © 2019 Norbert Grover. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var ItemImageView: UIImageView!
    @IBOutlet weak var ItemLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
