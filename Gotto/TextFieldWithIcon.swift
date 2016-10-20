//
//  GottoTextField.swift
//  Gotto
//
//  Created by Janeto Mac on 10/5/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

@IBDesignable class TextFieldWithIcon: UITextField {
    var leftViewAdded:UIView!
    var leftImageViewAdded:UIImageView = UIImageView()
    
    @IBInspectable var icon:UIImage? {
        didSet {
            leftImageViewAdded.image = icon
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
    
    func setup() {
//        leftImageViewAdded = UIImageView()
        
        leftViewAdded = UIView()
        leftViewAdded.addSubview(leftImageViewAdded)
        
        let frameHeightLeftView = self.frame.height
        leftViewAdded.frame = CGRectMake(0, 0, frameHeightLeftView + 10, frameHeightLeftView)
        leftImageViewAdded.frame = CGRectMake(0, 0, frameHeightLeftView, frameHeightLeftView)
        
        self.leftView = leftViewAdded
        self.leftViewMode = UITextFieldViewMode.Always
    }
    
//    override func layoutSubviews() {
//        let frameHeightLeftView = self.frame.height
//        self.leftViewAdded.backgroundColor = UIColor.redColor()
//        
//        leftViewAdded.frame = CGRectMake(0, 0, frameHeightLeftView + 10, frameHeightLeftView)
//        leftImageViewAdded.frame = CGRectMake(0, 0, frameHeightLeftView, frameHeightLeftView)
//        
//        
//    }
}
