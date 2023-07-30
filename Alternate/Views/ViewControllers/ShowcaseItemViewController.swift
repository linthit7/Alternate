//
//  ShowcaseItemViewController.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/29/23.
//

import UIKit

class ShowcaseItemViewController: BaseViewController {

    @IBOutlet weak var itemCollectionView: UICollectionView!

    override init(controllerTitle: String? = nil) {
        super.init(controllerTitle: controllerTitle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UICollectionViewUtility.customizeCollectionView(itemCollectionView, backgroundColor: UIColor.backgroundColor, scrollDirection: .vertical)
        UICollectionViewUtility.registerCells(collectionsAndCells: [itemCollectionView : [ShowcaseButtonCollectionViewCell.reuseIdentifier]])
    }
    
    override func setupDataSourceandDelegate() {
        super.setupDataSourceandDelegate()
        itemCollectionView.dataSource = self
        itemCollectionView.delegate  = self
    }
    
}

// MARK: UICollectionViewDataSource & Delegate & DelegateFlowLayout
extension ShowcaseItemViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ShowcaseButtonCollectionViewCell.reuseIdentifier, for: indexPath) as? ShowcaseButtonCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width-32, height: collectionView.frame.height * 0.2)
    }
    
}
