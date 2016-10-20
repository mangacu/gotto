//
//  UIViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/3/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func configurationKeyboard(scrollView: UIScrollView) {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        func keyboardDidShow(notification: NSNotification) {
            if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
                let contentInset = UIEdgeInsetsMake(scrollView.contentInset.top, scrollView.contentInset.left, keyboardSize.height, scrollView.contentInset.right)
                scrollView.setContentInsetAndScrollIndicatorInsets(contentInset)
                
//                self.view.frame.origin.y -= keyboardSize.height
            }
        }
        
        func keyboardDidHide(notification: NSNotification) {
//            if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
                let contentInset = UIEdgeInsetsMake(scrollView.contentInset.top, scrollView.contentInset.left, 0, scrollView.contentInset.right)
                scrollView.setContentInsetAndScrollIndicatorInsets(contentInset)
                
//                self.view.frame.origin.y += keyboardSize.height
//            }
        }
        
        NSNotificationCenter.defaultCenter().addObserverForName(UIKeyboardWillShowNotification, object: nil, queue: nil, usingBlock: keyboardDidShow)
        NSNotificationCenter.defaultCenter().addObserverForName(UIKeyboardWillHideNotification, object: nil, queue: nil, usingBlock: keyboardDidHide)
    }
    
    func removeObserverKeyboardBeforeViewDisappear() {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillShowNotification, object: self.view.window)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillHideNotification, object: self.view.window)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension UIScrollView {
    func setContentInsetAndScrollIndicatorInsets(edgeInsets: UIEdgeInsets) {
        self.contentInset = edgeInsets
        self.scrollIndicatorInsets = edgeInsets
    }
}
