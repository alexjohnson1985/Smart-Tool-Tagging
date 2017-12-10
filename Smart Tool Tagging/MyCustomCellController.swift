//
//  MyCustomCellController.swift
//  Smart Tool Tagging
//
//  Created by Alex Johnson on 10/12/2017.
//  Copyright © 2017 Alex Johnson. All rights reserved.
//

import UIKit

class MyCustomCellController: UITableViewCell {
    
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
