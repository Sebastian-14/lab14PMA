//
//  ImageCollectionViewCell.swift
//  lab13
//
//  Created by Sebastian on 11/19/19.
//  Copyright © 2019 Sebastian. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
    }
}
