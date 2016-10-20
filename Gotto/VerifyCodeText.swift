//
//  VerifyCodeText.swift
//  Gotto
//
//  Created by Janeto Mac on 10/10/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

protocol VerifyCodeTextDelegate {
    func tapKeyBoard(text: String)
}



class VerifyCodeText: UIView, UITextFieldDelegate {
    
    var delegate:VerifyCodeTextDelegate?
    
    private var arrCharView:[ViewWithBorder] = []
    private var arrCharLabel:[UILabel] = []
    private var textString:String = ""
    
    @IBInspectable var characterLength = 6 {
        didSet {
            setup()
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
        for i in 0..<characterLength {
            let charWidth = frame.size.width / CGFloat(characterLength + 1)
            var frameX:CGFloat = 0
            if i > 0 {
                frameX = (charWidth + (frame.size.width - charWidth * CGFloat(characterLength))/(CGFloat(characterLength - 1))) * CGFloat(i)
            }
            
            let characterView = ViewWithBorder(frame: CGRect(x: frameX, y: 0, width: charWidth, height: frame.size.height))
            characterView.bottomEdge = true
            characterView.colour = Const.gottoColor.TextColor
            characterView.thickness = 2
            
            let characterLabel = UILabel(frame: CGRect(x: 0, y: 0, width: characterView.frame.width, height: characterView.frame.height))
            
            self.changeTextInLabel(characterLabel, string: "")
            
            characterView.addSubview(characterLabel)
            
            addSubview(characterView)
            
            let textField = UITextField(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
            textField.keyboardType = .NumberPad
            
            //set opacity for show keyboard only
            textField.alpha = 0.011
            textField.tintColor = UIColor.clearColor()
            textField.backgroundColor = UIColor.clearColor()
            textField.delegate = self
            
            addSubview(textField)
            
            
            arrCharView.append(characterView)
            arrCharLabel.append(characterLabel)
        }
    }
    
    override func layoutSubviews() {
        for i in 0..<characterLength {
            let charWidth = frame.size.width / CGFloat(characterLength + 1)
            var frameX:CGFloat = 0
            if i > 0 {
                frameX = (charWidth + (frame.size.width - charWidth * CGFloat(characterLength))/(CGFloat(characterLength - 1))) * CGFloat(i)
            }
            
            arrCharView[i].frame.origin.x = frameX
            arrCharView[i].frame.size.width = charWidth
            
            arrCharLabel[i].frame = CGRectMake(0, 0, arrCharView[i].frame.width, arrCharView[i].frame.width)
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if string == "" {
            //event backspace
            if textString.characters.count > 0 {
                textString.removeAtIndex(textString.endIndex.predecessor())
                
                arrCharView[textString.characters.count].colour = Const.gottoColor.TextColor
                self.changeTextInLabel(arrCharLabel[textString.characters.count], string: "")
            }
        } else if textString.characters.count < characterLength {
            arrCharView[textString.characters.count].colour = Const.gottoColor.Red
            self.changeTextInLabel(arrCharLabel[textString.characters.count], string: string)
            
            textString += string
        }
        
        delegate?.tapKeyBoard(textString)
        
        return true
    }
    
    func changeTextInLabel(label: UILabel, string: String) {
        label.textAlignment = NSTextAlignment.Center
        
        let attrString = NSAttributedString(string: string, attributes: [
            NSFontAttributeName: UIFont(name: Const.gottoFontFamilyName.GothamRoundedMedium, size: 40)!,
            NSForegroundColorAttributeName: Const.gottoColor.Red
            ])
        label.attributedText = attrString
    }
}
