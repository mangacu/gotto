//
//  LabelPrice.swift
//  Gotto
//
//  Created by Janeto Mac on 10/20/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class LabelPrice: UIView {
    
    var price:Float = 0 {
        didSet {
            setup()
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
        let priceString = String(format: "%.2f", self.price).characters.split(".").map(String.init)
        let floorNumberString = priceString[0]
        let decimalNumberString = "." + priceString[1]
        
        let floorNumberFontSize = frame.size.height * 4/5
        let decimalNumberFontSize = floorNumberFontSize * 4/7
        
        let floorLabel = UILabel()
        floorLabel.text = "£" + floorNumberString
        floorLabel.font = UIFont(name: Const.gottoFontFamilyName.GothamRoundedBold, size: 10)
        floorLabel.textColor = Const.gottoColor.Pink
        floorLabel.font = floorLabel.font.fontWithSize(floorNumberFontSize)
        floorLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(floorLabel)
        
        let decimalLabel = UILabel()
        decimalLabel.text = decimalNumberString
        decimalLabel.font = UIFont(name: Const.gottoFontFamilyName.GothamRoundedBold, size: 10)
        decimalLabel.textColor = Const.gottoColor.Pink
        decimalLabel.font = decimalLabel.font.fontWithSize(decimalNumberFontSize)
        
        decimalLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(decimalLabel)
        
        let spacing = decimalNumberFontSize

        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[decimal]-(-\(spacing))-[floor]-0-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["floor": floorLabel, "decimal": decimalLabel]))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[floor]-0-[decimal]", options: NSLayoutFormatOptions(), metrics: nil, views: ["floor": floorLabel, "decimal": decimalLabel]))
    }
    
}
