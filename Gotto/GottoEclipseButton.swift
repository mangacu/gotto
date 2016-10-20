//
//  BottomButtonView.swift
//  Gotto
//
//  Created by Janeto Mac on 10/3/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class GottoEclipseButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func prepareForInterfaceBuilder() {
        setup()
    }
    
    func setup() {
        self.layer.cornerRadius = self.frame.height / 2
    }

}
