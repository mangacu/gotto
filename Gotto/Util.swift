//
//  Util.swift
//  Gotto
//
//  Created by Janeto Mac on 10/6/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class Util {
    class func attributedStringWithFontAndSize(string1: String, fontNameForString1: String, sizeForString1: CGFloat, colorString1: UIColor, string2: String, fontNameForString2: String, sizeForString2: CGFloat, colorString2: UIColor) -> NSMutableAttributedString {
        
        let attrString1 = NSMutableAttributedString(string: string1, attributes: [NSFontAttributeName: UIFont(name: fontNameForString1, size: sizeForString1)!, NSForegroundColorAttributeName: colorString1])
        let attrString2 = NSMutableAttributedString(string: string2, attributes: [NSFontAttributeName: UIFont(name: fontNameForString2, size: sizeForString2)!, NSForegroundColorAttributeName: colorString2])
        
        attrString1.appendAttributedString(attrString2)
        
        return attrString1
    }
//    
//    class func setTextWithLineSpacing(label: UILabel, text: String, lineSpace: CGFloat) {
//        let paragraphStyle = NSMutableParagraphStyle()
//        paragraphStyle.lineSpacing = lineSpace
//        
//        let attrString = NSMutableAttributedString(string: text)
//        attrString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSMakeRange(0, attrString.length))
//        
//        label.attributedText = attrString
//    }

}
