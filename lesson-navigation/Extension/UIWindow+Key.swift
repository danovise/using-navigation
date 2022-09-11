//
//  UIWindow+Key.swift
//  lesson-navigation
//
//  Created by Daria Sechko on 11.09.22.
//

import UIKit

extension UIWindow {
    
    static var key: UIWindow! {
        if #available(iOS 13, *) {
            
            return UIApplication
                .shared
                .connectedScenes
                .compactMap { $0 as? UIWindowScene }
                .flatMap { $0.windows }
                .first { $0.isKeyWindow }
            
        } else {
            return UIApplication.shared.keyWindow
        }
    }
}
