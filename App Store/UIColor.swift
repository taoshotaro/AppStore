//
//  UIColor.swift
//  albumer
//
//  Created by 垰尚太朗 on 2018/05/31.
//  Copyright © 2018年 ShotaroTao. All rights reserved.
//

import Foundation
import UIKit
import CoreImage


extension UIColor {
    
    class func hex(hexStr: String, alpha: CGFloat) -> UIColor {
        var hexStr = hexStr
        let alpha = alpha
        hexStr = hexStr.replacingOccurrences(of: "#", with: "")
        
        if hexStr.count == 3 {
            var newHexStr = ""
            for c in hexStr {
                newHexStr += "\(c)\(c)"
            }
            hexStr = newHexStr
        }
        
        let scanner = Scanner(string: hexStr)
        var color: UInt32 = 0
        if scanner.scanHexInt32(&color) {
            let r = CGFloat((color & 0xFF0000) >> 16) / 255.0
            let g = CGFloat((color & 0x00FF00) >> 8) / 255.0
            let b = CGFloat(color & 0x0000FF) / 255.0
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        } else {
            return UIColor.white
        }
    }
    
}
