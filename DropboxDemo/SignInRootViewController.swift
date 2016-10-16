//
//  SignInRootViewController.swift
//  DropboxDemo
//
//  Created by Michael Volovar on 10/15/16.
//  Copyright © 2016 Michael Volovar. All rights reserved.
//

import UIKit

class SignInRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        performSegue(withIdentifier: "firstSignInSegue", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
