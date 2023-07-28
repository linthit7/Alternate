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
    }
    
    override func setupDataSourceandDelegate() {
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self
    }
    
    override func setupDelegateFlowLayout() {
        let layout = UICollectionViewFlowLayoutFactory.createFlowLayout(scrollDirection: .vertical, itemSize: CGSize(width: 100, height: 100))
        homeCollectionView.collectionViewLayout = layout
    }

}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}
