//
//  LoginService.swift
//  LoginService
//
//  Created by Logic on 2019/11/13.
//

import UIKit
import HBDNavigationBar

open class LoginService: NSObject {
    static public func login() -> Void {
        let vc = LoginController()
        let nc = HBDNavigationController(rootViewController: vc)
        UIApplication.shared.keyWindow?.rootViewController?.present(nc, animated: true, completion: nil)
    }
}
