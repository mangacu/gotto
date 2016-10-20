//
//  VerifyNumberViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/6/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class VerifyNumberViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var mobileNumber: UITextField!
    @IBOutlet weak var countryCode: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationItem.title = "Mobile Number"
        self.configurationKeyboard(scrollView)
        
        let countryPicker = CountryPicker()
        
        countryPicker.countryPhoneCodeDelegate = self
        
        countryCode.inputView = countryPicker

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
}
