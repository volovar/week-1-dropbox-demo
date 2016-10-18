//
//  DetailsViewController.swift
//  DropboxDemo
//
//  Created by Michael Volovar on 10/17/16.
//  Copyright © 2016 Michael Volovar. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    var isFavorited = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightButton = UIBarButtonItem(image: UIImage(named: "favorite_btn"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(DetailsViewController.didPressRightButton))

        navigationController?.setNavigationBarHidden(false, animated: false)
        // hardcoded name for this specific view
        navigationItem.title = "empty_files.png"
        navigationItem.rightBarButtonItem = rightButton
        
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
    }
    
    func didPressRightButton(sender: UIBarButtonItem) {
        if !isFavorited {
            sender.image = UIImage(named: "favorited_btn")
        } else {
            sender.image = UIImage(named: "favorite_btn")
        }
        
        isFavorited = !isFavorited
    }

}
