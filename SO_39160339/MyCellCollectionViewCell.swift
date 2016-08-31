//
//  MyCellCollectionViewCell.swift
//  SO_39160339
//
//  Created by Jakub Mazur on 31/08/16.
//  Copyright © 2016 wingu AG. All rights reserved.
//

import UIKit

class MyCellCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var roundedView: UIView!

    override func prepareForReuse() {
        self.roundedView.layer.cornerRadius = self.frame.size.height/2

    }

}