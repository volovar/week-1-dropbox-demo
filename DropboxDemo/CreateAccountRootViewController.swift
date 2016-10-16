//
//  CreateAccountRootViewController.swift
//  DropboxDemo
//
//  Created by Michael Volovar on 10/15/16.
//  Copyright © 2016 Michael Volovar. All rights reserved.
//

import UIKit

class CreateAccountRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.setNavigationBarHidden(true, animated: false)
        performSegue(withIdentifier: "firstCreateAccountSegue", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
