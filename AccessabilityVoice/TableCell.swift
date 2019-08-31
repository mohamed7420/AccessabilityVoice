//
//  TableCell.swift
//  AccessabilityVoice
//
//  Created by Mohamed on 9/1/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
  
        emojiLabel.isAccessibilityElement = true
        nameLabel.isAccessibilityElement = true
        scoreLabel.isAccessibilityElement = true
        
        emojiLabel.accessibilityHint = "the image of animal"
        nameLabel.accessibilityHint = "the name of animal"
        scoreLabel.accessibilityHint = "the score of animal"
        
    }

    

}
