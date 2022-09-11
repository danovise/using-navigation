//
//  ResetPasswordVC.swift
//  lesson-navigation
//
//  Created by Daria Sechko on 11.09.22.
//

import UIKit

class ResetPasswordVC: UIViewController, Storyboarded {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        navigationItem.title = "Восстановить пароль"
    }
    
    @IBAction func closeResetPasswordScreenAction(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        
      //  self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func finishAuthorizationAction(_ sender: Any) {
        
        UIView.transition(with: UIWindow.key, duration: 0.6, options: .transitionCrossDissolve) {
        
        UIWindow.key.rootViewController = MainVC.instantiate()
    }
    
}
}
