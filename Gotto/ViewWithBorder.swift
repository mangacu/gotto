//
//  ViewWithBorder.swift
//  Gotto
//
//  Created by Janeto Mac on 10/7/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

@IBDesignable class ViewWithBorder: UIView {
    
    private var edgesAdded:UIRectEdge = []
    private var colourAdded:UIColor = UIColor.redColor()
    private var thicknessAdded:CGFloat = 1
    
    @IBInspectable var topEdge:Bool = false {
        didSet {
            if topEdge == true {
                edgesAdded.insert([.Top])
            } else {
                edgesAdded.remove([.Top])
            }
            setup()
        }
    }
    
    @IBInspectable var bottomEdge:Bool = false {
        didSet {
            if bottomEdge == true {
                edgesAdded.insert([.Bottom])
            } else {
                edgesAdded.remove([.Bottom])
            }
            setup()
        }
    }
    
    @IBInspectable var leftEdge:Bool = false {
        didSet {
            if leftEdge == true {
                edgesAdded.insert([.Left])
            } else {
                edgesAdded.remove([.Left])
            }
            setup()
        }
    }
    
    @IBInspectable var rightEdge:Bool = false {
        didSet {
            if rightEdge == true {
                edgesAdded.insert([.Right])
            } else {
                edgesAdded.remove([.Right])
            }
            setup()
        }
    }
    
    @IBInspectable var colour:UIColor = UIColor.whiteColor() {
        didSet {
            self.colourAdded = colour
            setup()
        }
    }
    
    @IBInspectable var thickness:CGFloat = 1 {
        didSet {
            self.thicknessAdded = thickness
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
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
    
    func setup() {
        self.addBorder(edges: edgesAdded, colour: colourAdded, thickness: thicknessAdded)
    }
}
