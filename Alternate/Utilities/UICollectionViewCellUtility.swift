//
//  UICollectionViewCellUtility.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/28/23.
//

import UIKit

final class UICollectionViewCellUtility {
    
    private init() {}
    // This function receives a view and two proportions: widthProportion and heightProportion.
    static func resizeViewProportionally(view: UIView, widthProportion: CGFloat, heightProportion: CGFloat) {
        view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // Make the view's width a proportion of the screen's width
            view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * widthProportion),
            
            // Make the view's height a proportion of the screen's height
            view.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * heightProportion)
        ])
    }
    
}
