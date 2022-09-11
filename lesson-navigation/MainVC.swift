//
//  MainVC.swift
//  lesson-navigation
//
//  Created by Daria Sechko on 11.09.22.
//

import UIKit

class MainVC: UIViewController, Storyboarded {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func showMainTabBarAction(_ sender: Any) {
        
        let vc = MainTabBarVC.instantiate()
        self.present(vc, animated: true, completion: nil)
    }
    
}
