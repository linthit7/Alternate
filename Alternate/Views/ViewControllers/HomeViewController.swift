//
//  HomeViewController.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/27/23.
//

import UIKit

class HomeViewController: BaseViewController {
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    init() {
        super.init(controllerTitle: "Home")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UICollectionViewUtility.customizeCollectionView(homeCollectionView, backgroundColor: UIColor.backgroundColor, scrollDirection: .vertical)
        UICollectionViewUtility.registerCells(collectionsAndCells: [homeCollectionView: [ShowcaseButtonCollectionViewCell.reuseIdentifier, ShowcaseTextFieldCollectionViewCell.reuseIdentifier]])
    }
    
    override func setupDataSourceandDelegate() {
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self
    }
    
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ShowcaseButtonCollectionViewCell.reuseIdentifier, for: indexPath) as? ShowcaseButtonCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        case 1:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ShowcaseTextFieldCollectionViewCell.reuseIdentifier, for: indexPath) as? ShowcaseTextFieldCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        default: break
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.section {
        case 0:
            return CGSize(width: collectionView.frame.width-32, height: collectionView.frame.height * 0.2)
        case 1:
            return CGSize(width: collectionView.frame.width-32, height: collectionView.frame.height * 0.1)
        default: break
        }
        return CGSize()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }

    
}
