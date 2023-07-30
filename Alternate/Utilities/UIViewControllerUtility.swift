//
//  UIViewControllerUtility.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/30/23.
//

import UIKit

final class UIViewControllerUtility {
    
    private init() {}
    
    static func pushViewController(to: UIViewController, from: UIViewController) {
        from.navigationController?.pushViewController(to, animated: true)
    }
    
}
