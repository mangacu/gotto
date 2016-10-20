//
//  SignUpViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/3/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class ChoiceRegistrationViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var signUpWithFacebook: GottoEclipseButton!
    @IBOutlet weak var signUpWithEmail: GottoEclipseButton!
    @IBOutlet weak var bottomLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.setImageBackground("5")
        
        self.configurationKeyboard(scrollView)
        
        bottomLabel.attributedText = Util.attributedStringWithFontAndSize("Be registering you agree to our ", fontNameForString1: Const.gottoFontFamilyName.GothamRoundedBook, sizeForString1: 11.5, colorString1: self.bottomLabel.textColor, string2: "Terms & Conditions", fontNameForString2: Const.gottoFontFamilyName.GothamRoundedMedium, sizeForString2: 11.5, colorString2: self.bottomLabel.textColor)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
//        self.navigationController?.navigationBarHidden = true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.removeObserverKeyboardBeforeViewDisappear()
    }
    

}
