//
//  ViewController.swift
//  iOS_Authentication
//
//  Created by mn(D128) on 2018/06/11.
//  Copyright © 2018年 D128. All rights reserved.
//

import UIKit
import FirebaseUI

class ViewController: UIViewController {

    // MARK: - Action

    @IBAction private func loginDidTap(_ sender: Any) {
        guard let authUI = FUIAuth.defaultAuthUI() else {
            return
        }
        
        authUI.delegate = self
        let authViewController = authUI.authViewController()
        
        self.present(authViewController, animated: true, completion: nil)
    }

}

extension ViewController: FUIAuthDelegate {
    
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        print("")
    }
    
}
