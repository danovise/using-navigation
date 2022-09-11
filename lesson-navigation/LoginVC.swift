//
//  ViewController.swift
//  lesson-navigation
//
//  Created by Daria Sechko on 11.09.22.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var modalPresentationButton: UIButton!
    @IBOutlet weak var signUpView: UIView!
    @IBOutlet weak var resetPasswordView: UIView!
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMainController()
        setupSignUpController()
    }
    
    func setupSignUpController() {
        
        let signUpVC = SignUpVC.instantiate()
        let signUpNav = UINavigationController(rootViewController: signUpVC)
        
        self.addChild(signUpNav)
        self.signUpView.addSubview(signUpNav.view)
        signUpVC.didMove(toParent: self)
    }
    
    func setupMainController() {
        
        let mainVC = MainVC.instantiate()
        self.addChild(mainVC)
        self.mainView.addSubview(mainVC.view)
        mainVC.didMove(toParent: self)
    }
    
    @IBAction func modalPresent(_ sender: Any) {
        
        let signUpVC = SignUpVC.instantiate()
        signUpVC.modalPresentationStyle = .fullScreen
        
        let navVC = UINavigationController(rootViewController: signUpVC)
        self.present(navVC, animated: true, completion: nil)
    }
}

