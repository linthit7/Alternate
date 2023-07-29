//
//  ShowcaseTextFieldCollectionViewCell.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/28/23.
//

import UIKit

class ShowcaseTextFieldCollectionViewCell: BaseCollectionViewCell {

    override class var reuseIdentifier: String {
        return String(describing: ShowcaseTextFieldCollectionViewCell.self)
    }
    
    @IBOutlet weak var showcaseTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        roundedCorners(prefixRadius: .large)
        UICollectionViewCellUtility.resizeViewProportionally(view: showcaseTextField, widthProportion: 0.5, heightProportion: 0.02)
    }

}
