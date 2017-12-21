//
//  MyCustomTableViewCell.swift
//  Smart Tool Tagging
//
//  Created by Alex Johnson on 17/12/2017.
//  Copyright © 2017 Alex Johnson. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemEntry: UILabel!
    
    func addItem(_ sender: AnyObject) {
        if (itemEntry.text != "") {
            result.append(itemEntry.text!)
            itemEntry.text = ""
        }
    }
    @IBOutlet weak var dateAndTimeStamp: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
