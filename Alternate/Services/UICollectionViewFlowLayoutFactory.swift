//
//  UICollectionViewFlowLayoutFactory.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/28/23.
//

import UIKit

final class UICollectionViewFlowLayoutFactory {

    private init(){}
    
    static func createFlowLayout(scrollDirection: UICollectionView.ScrollDirection,
                                  itemSize: CGSize,
                                  minimumLineSpacing: CGFloat = 10,
                                  minimumInteritemSpacing: CGFloat = 10,
                                  sectionInset: UIEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)) -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = scrollDirection
        layout.itemSize = itemSize
        layout.minimumLineSpacing = minimumLineSpacing
        layout.minimumInteritemSpacing = minimumInteritemSpacing
        layout.sectionInset = sectionInset
        return layout
    }

}
