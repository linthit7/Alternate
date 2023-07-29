//
//  BaseCollectionViewCell.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/28/23.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {

    class var reuseIdentifier: String {
        return String(describing: self)
    }
        
    override func awakeFromNib() {
        super.awakeFromNib()
        self.clipsToBounds = true
        self.contentView.backgroundColor = .white
        self.layer.cornerCurve = .continuous
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
    }

}
