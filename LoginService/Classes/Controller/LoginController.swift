//
//  LoginController.swift
//  LoginService
//
//  Created by Logic on 2019/11/13.
//

import UIKit
import HBDNavigationBar
import Extensions

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViews()
        self.setupNavigation()
    }

    @objc func leftBarButtonItemClick() {
        self.dismiss(animated: true, completion: nil)
    }

    @objc func rightBarButtonItemClick() {
        let vc = UIViewController()
        vc.view.backgroundColor = UIColor.white
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
