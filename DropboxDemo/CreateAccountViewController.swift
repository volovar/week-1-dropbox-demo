//
//  CreateAccountViewController.swift
//  DropboxDemo
//
//  Created by Michael Volovar on 10/15/16.
//  Copyright © 2016 Michael Volovar. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBackButton(_ sender: AnyObject) {
        _ = navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func didPressTermsDoneButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
}
