//
//  SignInViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/5/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Sign In"
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.configurationKeyboard(scrollView)
        
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
