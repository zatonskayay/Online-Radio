//
//  LabelTable.swift
//  Online Radio
//
//  Created by Yulia Zatonskaya on 21.04.2020.
//  Copyright © 2020 Zatonskayay. All rights reserved.
//

import UIKit

class LabelTable: UITableViewCell {

    @IBOutlet weak var radioLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        radioLabel.text = "Radio"
    }

}
