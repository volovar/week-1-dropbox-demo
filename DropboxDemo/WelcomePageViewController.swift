//
//  WelcomePageViewController.swift
//  DropboxDemo
//
//  Created by Michael Volovar on 10/16/16.
//  Copyright © 2016 Michael Volovar. All rights reserved.
//

import UIKit

class WelcomePageViewController: UIPageViewController {
    var pages = [UIViewController]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        let page1: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "page1")
        let page2: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "page2")
        let page3: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "page3")
        
        pages.append(page1)
        pages.append(page2)
        pages.append(page3)
        
        setViewControllers([page1], direction: .forward, animated: false, completion: nil)
    }
    
}

extension WelcomePageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let currentIndex = pages.index(of: viewController)!
        
        // prevents page wrap around
        guard currentIndex > 0 else {
            return nil
        }
        
        return pages[currentIndex - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let currentIndex = pages.index(of: viewController)!
        
        guard currentIndex < pages.count - 1 else {
            return nil
        }
        
        return pages[currentIndex + 1]
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return 3
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}
