//
//  SignUpVC.swift
//  lesson-navigation
//
//  Created by Daria Sechko on 11.09.22.
//

import UIKit

class SignUpVC: UIViewController, Storyboarded {

    @IBOutlet weak var dismissButton: UIButton!
    @IBOutlet weak var navigationToResetPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Регистрация"
        
    }
    
    @IBAction func closeSignUpScreenAction(_ sender: Any) {
        
        self.dismiss(animated: true)
    }
    
    @IBAction func showResetPasswordAction(_ sender: Any) {
        
        let resetPasswordVC = ResetPasswordVC.instantiate()
        
        self.navigationController?.pushViewController(resetPasswordVC, animated: true)
    }
    
}
