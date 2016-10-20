//
//  GottoLabelWithLineSpacing.swift
//  Gotto
//
//  Created by Janeto Mac on 10/6/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit


class GottoLabelWithLineSpacing: UILabel {
    
    var paragraphStyleAdded: NSMutableParagraphStyle = NSMutableParagraphStyle()
    
    @IBInspectable var lineSpace:CGFloat = CGFloat(5) {
        didSet {
//            if lineSpace != nil {
                paragraphStyleAdded.lineSpacing = lineSpace
//            }
//            else {
//                paragraphStyle.lineSpacing = 10
//            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
        
        if let text = self.text {
            paragraphStyleAdded.alignment = self.textAlignment
            paragraphStyleAdded.lineSpacing = lineSpace
            
            let attributedString = NSMutableAttributedString(string: text)
            attributedString.addAttribute(NSFontAttributeName, value: self.font, range: NSMakeRange(0, attributedString.length))
            attributedString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyleAdded, range: NSMakeRange(0, attributedString.length))
            self.attributedText = attributedString
        }
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
}
