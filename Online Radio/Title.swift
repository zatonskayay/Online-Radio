//
//  Title.swift
//  Online Radio
//
//  Created by Yulia Zatonskaya on 29.04.2020.
//  Copyright © 2020 Zatonskayay. All rights reserved.
//

import UIKit

class Title: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
    }

}
