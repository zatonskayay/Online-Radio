//
//  FavoriteRadio.swift
//  Online Radio
//
//  Created by Yulia Zatonskaya on 29.04.2020.
//  Copyright © 2020 Zatonskayay. All rights reserved.
//

import UIKit

class FavoriteRadio: UICollectionViewCell {
    
    
    @IBOutlet weak var radioImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        radioImage.image = UIImage(systemName: "book")
        radioImage.contentMode = .scaleAspectFill
    }
}
