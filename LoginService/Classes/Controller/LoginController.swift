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
        self.view.backgroundColor = UIColor.white;
        self.hbd_barShadowHidden = true
        self.hbd_barAlpha = 0
        
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "返回", style: .plain, target: self, action: #selector(leftBarButtonItemClick))
        navigationItem.leftBarButtonItem?.imageInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: -8)
        navigationItem.leftBarButtonItem?.setTitleTextAttributes([.foregroundColor : UIColor.black, .font : UIFont.systemFont(ofSize: 15)], for: .normal)
        navigationItem.leftBarButtonItem?.setTitleTextAttributes([.foregroundColor : UIColor.black, .font : UIFont.systemFont(ofSize: 15)], for: .highlighted)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "注册", style: .plain, target: self, action: #selector(rightBarButtonItemClick))
        navigationItem.rightBarButtonItem?.imageInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: -8)
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([.foregroundColor : UIColor.black, .font : UIFont.systemFont(ofSize: 15)], for: .normal)
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([.foregroundColor : UIColor.black, .font : UIFont.systemFont(ofSize: 15)], for: .highlighted)
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
