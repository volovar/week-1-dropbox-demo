//
//  SignInViewController.swift
//  DropboxDemo
//
//  Created by Michael Volovar on 10/15/16.
//  Copyright © 2016 Michael Volovar. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.becomeFirstResponder()
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

    @IBAction func didPressBackButton(_ sender: AnyObject) {
        _ = navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func didPressSignInTroubleButton(_ sender: AnyObject) {
        let signInTroubleAlert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        signInTroubleAlert.addAction(UIAlertAction(title: "Forgot Password?", style: .default, handler: nil))
        
        signInTroubleAlert.addAction(UIAlertAction(title: "Single Sign-On", style: .default, handler: nil))
        
        signInTroubleAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(signInTroubleAlert, animated: true, completion: nil)
    }
}
