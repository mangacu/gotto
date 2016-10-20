//
//  RatingControl.swift
//  Gotto
//
//  Created by Janeto Mac on 10/19/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit


class RatingControl: UIView {
    
    // MARK: Properties
    @IBInspectable var rating:Int = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    @IBInspectable var enableStarTap:Bool = false {
        didSet {
            self._enableStarTap = enableStarTap
        }
    }
    
    private var _enableStarTap = false
    private var ratingButton = [UIButton]()
    private let starCount = 5
    private var delegate: RatingDelegate?
    
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let emptyStarImage = UIImage(named: "empty_star")
        let filledStarImage = UIImage(named: "filled_star")
        
        for _ in 0..<starCount {
            let button = UIButton()
            
            button.backgroundColor = UIColor.clearColor()
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(filledStarImage, forState: .Selected)
            button.setImage(filledStarImage, forState: [.Highlighted, .Selected])
            
            button.adjustsImageWhenHighlighted = false
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: .TouchDown)
            ratingButton.append(button)
            addSubview(button)
        }
    }
    
    override func layoutSubviews() {
        
        let buttonSize = frame.size.height
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        let frameWidth = frame.size.width
        let originWidth = buttonSize * CGFloat(starCount)
        
        let spacing:CGFloat = (frameWidth - originWidth) / CGFloat(starCount - 1)
        
        for (index, button) in ratingButton.enumerate() {
            buttonFrame.origin.x = CGFloat(index) * (buttonSize + spacing)
            button.frame = buttonFrame
        }
        
        updateButtonSelectionStates()
    }
    
//    override func intrinsicContentSize() -> CGSize {
//        let buttonSize = Int(frame.size.height)
//        let width = (buttonSize * starCount) + (spacing * (starCount - 1))
//        
//        return CGSize(width: width, height: buttonSize)
//    }
    
    @objc private func ratingButtonTapped(button: UIButton) {
        if self._enableStarTap == true {
            rating = ratingButton.indexOf(button)! + 1
            
            updateButtonSelectionStates()
            
            self.delegate!.ratingButtonTap()
        }
    }
    
    private func updateButtonSelectionStates() {
        for (index, button) in ratingButton.enumerate() {
            // If the index of a button is less than the rating, that button should be selected.
            button.selected = index < rating
        }
    }
    
}

protocol RatingDelegate {
    func ratingButtonTap()
}

