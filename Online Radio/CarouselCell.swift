//
//  CarouselCell.swift
//  Online Radio
//
//  Created by Yulia Zatonskaya on 29.04.2020.
//  Copyright © 2020 Zatonskayay. All rights reserved.
//

import UIKit

class CarouselCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "FavoriteRadio", bundle: nil), forCellWithReuseIdentifier: "favoriteRadioImage")
        
    }
}
extension CarouselCell: UICollectionViewDataSource {
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "favoriteRadioImage", for: indexPath)
        return cell
    }
        
}
    
