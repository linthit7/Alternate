//
//  UIKitExtensions.swift
//  Alternate
//
//  Created by Lin Thit Khant on 7/27/23.
//

import UIKit

extension UIColor {
    
    static let primary = UIColor.black
    static let backgroundColor = UIColor(hex: "f5fcfc")
    
    convenience init(hex: String, alpha: CGFloat = 1.0) {
            let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
            var int = UInt64()
            Scanner(string: hex).scanHexInt64(&int)
            let a, r, g, b: UInt64
            switch hex.count {
            case 3: // RGB (12-bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (1, 1, 1, 0)
            }
            self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
        }
}

extension UIView {
    
    func roundedCorners(radius: CGFloat? = nil, prefixRadius: HomeCollectionViewCellSize? = nil) {
            let radiusToUse: CGFloat
            if let radius = radius {
                radiusToUse = radius
            } else if let prefixRadius = prefixRadius {
                radiusToUse = prefixRadius.rawValue
            } else {
                // If no radius is provided, default to a corner radius of 0 (i.e., no rounding)
                radiusToUse = 0
            }
            self.layer.cornerRadius = radiusToUse
            self.clipsToBounds = true
        }
}

enum HomeCollectionViewCellSize: CGFloat {
    case small = 8
    case medium = 16
    case large = 24
}
