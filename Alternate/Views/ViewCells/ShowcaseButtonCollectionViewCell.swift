//
//  ShowcaseButtonCollectionViewCell.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/28/23.
//

import UIKit

class ShowcaseButtonCollectionViewCell: BaseCollectionViewCell {

    override class var reuseIdentifier: String {
        return String(describing: ShowcaseButtonCollectionViewCell.self)
    }
    
    @IBOutlet weak var showcaseButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        roundedCorners(prefixRadius: .large)
        UICollectionViewCellUtility.resizeViewProportionally(view: showcaseButton, widthProportion: 0.3, heightProportion: 0.05)
    }
    
    

}
