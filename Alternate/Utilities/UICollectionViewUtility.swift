//
//  UICollectionViewUtility.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/28/23.
//

import UIKit

final class UICollectionViewUtility {
    
    private init(){}
    
    static func customizeCollectionView(_ collectionView: UICollectionView, backgroundColor: UIColor? = .white, scrollDirection: UICollectionView.ScrollDirection, itemSize: CGSize = CGSize(width: 10, height: 10), minimumLineSpacing: CGFloat = 10, minimumInteritemSpacing: CGFloat = 10, sectionInset: UIEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)) {
        
        collectionView.backgroundColor = backgroundColor
        collectionView.collectionViewLayout = UICollectionViewFlowLayoutFactory.createFlowLayout(scrollDirection: scrollDirection, itemSize: itemSize, minimumLineSpacing: minimumLineSpacing, minimumInteritemSpacing: minimumInteritemSpacing, sectionInset: sectionInset)
    }
    
    static func registerCells(collectionsAndCells: [UICollectionView: [String]]) {
        for (collectionView, cellTypes) in collectionsAndCells {
            for cellType in cellTypes {
                collectionView.register(UINib(nibName: cellType, bundle: nil), forCellWithReuseIdentifier: cellType)
            }
        }
    }
    
}
