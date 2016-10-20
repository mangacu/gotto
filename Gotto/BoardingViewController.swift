//
//  BoardingViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/3/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class BoardingViewController: UIViewController {
    
    @IBOutlet weak var signUpFacebook: GottoEclipseButton!
    @IBOutlet weak var signUpEmail: GottoEclipseButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let attrStringSignUpFacebook = Util.attributedStringWithFontAndSize("Sign up with ", fontNameForString1: Const.gottoFontFamilyName.GothamRoundedBook, sizeForString1: 18, colorString1: UIColor.whiteColor(), string2: "Facebook", fontNameForString2: Const.gottoFontFamilyName.GothamRoundedMedium, sizeForString2: 18, colorString2: UIColor.whiteColor())
        
        self.signUpFacebook.setAttributedTitle(attrStringSignUpFacebook, forState: .Normal)
        
        let attrStringSignUpEmail = Util.attributedStringWithFontAndSize("Sign up with ", fontNameForString1: Const.gottoFontFamilyName.GothamRoundedBook, sizeForString1: 18, colorString1: UIColor.whiteColor(), string2: "Email", fontNameForString2: Const.gottoFontFamilyName.GothamRoundedMedium, sizeForString2: 18, colorString2: UIColor.whiteColor())
        
        self.signUpEmail.setAttributedTitle(attrStringSignUpEmail, forState: .Normal)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
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
