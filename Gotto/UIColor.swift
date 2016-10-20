//
//  UIColor.swift
//  Gotto
//
//  Created by Janeto Mac on 10/5/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

extension UIColor {
    class func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}
