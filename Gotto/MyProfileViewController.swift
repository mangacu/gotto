//
//  MyProfileViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/12/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var mobileNumber: UITextField!
    
    var isMale:Bool = false {
        didSet {
            configValueGender()
        }
    }

    @IBAction func maleAction(sender: AnyObject) {
        isMale = true
    }

    @IBAction func femaleAction(sender: AnyObject) {
        isMale = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configurationKeyboard(scrollView)
        
        
        let datePickerView:UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.Date
        dateOfBirth.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(MyProfileViewController.datePickerValueChanged), forControlEvents: .ValueChanged)
        
        configValueGender()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        self.removeObserverKeyboardBeforeViewDisappear()
    }
    
    func datePickerValueChanged(sender: UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        self.dateOfBirth.text = dateFormatter.stringFromDate(sender.date)
    }
    
    func configValueGender() {
        self.view.endEditing(true)
        if isMale == true {
            maleButton.selected = true
            maleButton.backgroundColor = Const.gottoColor.DarkPink
            femaleButton.selected = false
            femaleButton.backgroundColor = UIColor.whiteColor()
        } else {
            maleButton.selected = false
            maleButton.backgroundColor = UIColor.whiteColor()
            femaleButton.selected = true
            femaleButton.backgroundColor = Const.gottoColor.DarkPink
        }
    }

}
