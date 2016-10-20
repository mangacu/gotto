//
//  SignUpViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/4/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var myScrollView: UIScrollView!
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: TextFieldWithIcon!
    @IBOutlet weak var password: TextFieldWithIcon!
    @IBOutlet weak var email: TextFieldWithIcon!
    @IBOutlet weak var confirmEmail: TextFieldWithIcon!
    @IBOutlet weak var dateOfBirth: TextFieldWithIcon!
    
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    
    @IBOutlet weak var bottomButton: UIButton!
    
    var isMale:Bool = false {
        didSet {
            setupGenderButton()
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
        self.configurationKeyboard(myScrollView)
        
        configView()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.removeObserverKeyboardBeforeViewDisappear()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem
    }
    
    func configView() {
        self.navigationItem.title = "Sign up"
        
        let rightItem = UIBarButtonItem(title: "Sign in", style: .Plain, target: nil, action: nil)
        self.navigationItem.setRightBarButtonItem(rightItem, animated: false)
        
        self.bottomButton.setAttributedTitle(Util.attributedStringWithFontAndSize("Already registered? ", fontNameForString1: Const.gottoFontFamilyName.GothamRoundedBook, sizeForString1: 11, colorString1: (self.bottomButton.titleLabel?.textColor)!, string2: "Sign in here", fontNameForString2: Const.gottoFontFamilyName.GothamRoundedMedium, sizeForString2: 11, colorString2: (self.bottomButton.titleLabel?.textColor)!), forState: .Normal)
        
        let datePickerView:UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.Date
        dateOfBirth.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(SignUpViewController.dateOfBirthValueChanged(_:)), forControlEvents: .ValueChanged)
        
        setupGenderButton()
    }
    
    func setupGenderButton() {
        self.view.endEditing(true)
        if isMale == true {
            maleButton.selected = true
            maleButton.backgroundColor = Const.gottoColor.TextColor
            femaleButton.selected = false
            femaleButton.backgroundColor = UIColor.whiteColor()
        } else {
            maleButton.selected = false
            maleButton.backgroundColor = UIColor.whiteColor()
            femaleButton.selected = true
            femaleButton.backgroundColor = Const.gottoColor.TextColor
        }
    }
    
    func dateOfBirthValueChanged(sender: UIDatePicker) {
        let dateFormater = NSDateFormatter()
        dateFormater.dateFormat = "dd/MM/yyyy"
        self.dateOfBirth.text = dateFormater.stringFromDate(sender.date)
    }

}