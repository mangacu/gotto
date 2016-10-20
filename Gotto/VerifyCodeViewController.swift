//
//  VerifyCodeViewController.swift
//  Gotto
//
//  Created by Janeto Mac on 10/10/16.
//  Copyright © 2016 JANETO. All rights reserved.
//

import UIKit

class VerifyCodeViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var verifyCodeText: VerifyCodeText!
    
    
    @IBAction func verifyAction(sender: AnyObject) {
        let storyBoard = UIStoryboard(name: "App", bundle: nil)
        let vc = storyBoard.instantiateViewControllerWithIdentifier("TabBarVC") as! TabBarViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.configurationKeyboard(scrollView)
        verifyCodeText.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        self.removeObserverKeyboardBeforeViewDisappear()
    }
    
    
}
