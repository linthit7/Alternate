//
//  BaseViewController.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/27/23.
//

import UIKit

class BaseViewController: UIViewController {
    
    var controllerTitle: String?
    
    init(controllerTitle: String? = nil) {
        self.controllerTitle = controllerTitle
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = controllerTitle
        self.view.backgroundColor = UIColor.backgroundColor
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: nil, action: nil)
        self.navigationController?.navigationBar.tintColor = UIColor.primary
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.primary]
        self.navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.primary]
        setupDataSourceandDelegate()
    }
    
    func setupDataSourceandDelegate() {
        //SetupDataSourceandDelegate for tableview/collectionview
    }

}
