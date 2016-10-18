//
//  CreateAccountViewController.swift
//  DropboxDemo
//
//  Created by Michael Volovar on 10/15/16.
//  Copyright © 2016 Michael Volovar. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    let weakImage = UIImage(named: "signup_1")
    let soSoImage = UIImage(named: "signup_2")
    let goodImage = UIImage(named: "signup_3")
    let greatImage = UIImage(named: "signup_4")
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var passwordField: UITextField!

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
    
    @IBAction func didPressTermsDoneButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func editingChanged(_ sender: AnyObject) {
        let characterCount = passwordField.text?.characters.count
        
        if characterCount! < 4 {
            imageView.image = weakImage
        } else if characterCount! < 6 {
            imageView.image = soSoImage
        } else if characterCount! < 8 {
            imageView.image = goodImage
        } else {
            imageView.image = greatImage
        }
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
        })
        
        createAccountAlert.addAction(termsAction)
        
        present(createAccountAlert, animated: true, completion: nil)
    }
}
