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

        navigationController?.setNavigationBarHidden(false, animated: false)
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
    
    @IBAction func didPressCreateButton(_ sender: AnyObject) {
        let createAccountAlert = UIAlertController(title: nil, message: "Before you can complete your registration, you must accept the Dropbox Terms of Service.", preferredStyle: .actionSheet)
        
        let agreeAction = UIAlertAction(title: "I Agree", style: .default, handler: {
            (action:UIAlertAction) in
            let userVC = self.storyboard?.instantiateViewController(withIdentifier: "userVC")
            userVC?.modalTransitionStyle = .crossDissolve
            
            self.present(userVC!, animated: true, completion: nil)
        })
        
        createAccountAlert.addAction(agreeAction)
        
        let termsAction = UIAlertAction(title: "View Terms", style: .default, handler: {(action:UIAlertAction) in
            let termsVC = self.storyboard?.instantiateViewController(withIdentifier: "termsVC")
            let navController = UINavigationController(rootViewController: termsVC!)
            
            self.present(navController, animated: true, completion: nil)
//            UINavigationController().pushViewController(termsVC!, animated: true)
        })
        
        createAccountAlert.addAction(termsAction)
        
        present(createAccountAlert, animated: true, completion: nil)
    }
}
