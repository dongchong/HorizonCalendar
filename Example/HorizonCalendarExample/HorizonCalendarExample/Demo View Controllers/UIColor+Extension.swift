//
//  UIColor+Extension.swift
//  lesoftSwift
//
//  Created by 董聪 on 2019/11/27.
//  Copyright © 2019 董聪. All rights reserved.
//

import UIKit

extension UIColor {
    convenience public init(hexString: String) {
        self.init(hexString: hexString, alpha: 1)
    }
    
    convenience public init(hexString: String, alpha: Float) {
        var tempHex = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if tempHex.hasPrefix("#") {
            tempHex = String(tempHex.dropFirst())
        }
        if tempHex.hasPrefix("0x") || tempHex.hasPrefix("##") || tempHex.hasPrefix("0X") {
            tempHex = String(tempHex.dropFirst(2))
        }
        if tempHex.count < 6  {
            self.init()
        }
        
        let scanner = Scanner.init(string: tempHex)
        var color: UInt64 = 0
        scanner.scanHexInt64(&color)
        let mask = 0x000000FF
        let red = Int(color >> 16) & mask
        let green = Int(color >> 8) & mask
        let blue = Int(color) & mask
        let maxColor = CGFloat(255)
        self.init(red: CGFloat(red)/maxColor, green: CGFloat(green)/maxColor, blue: CGFloat(blue)/maxColor, alpha: CGFloat(alpha))
    }
}
