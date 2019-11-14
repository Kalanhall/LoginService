//
//  LoginViewLayout.swift
//  LoginService
//
//  Created by Kalan on 2019/11/14.
//

import Foundation

extension LoginController {
    
    func setupNavigation() {
        self.hbd_barShadowHidden = true
        self.hbd_barAlpha = 0
        
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "返回", style: .plain, target: self, action: #selector(leftBarButtonItemClick))
        navigationItem.leftBarButtonItem?.setTitleTextAttributes([.foregroundColor : UIColor.black], for: .normal)
        navigationItem.leftBarButtonItem?.setTitleTextAttributes([.foregroundColor : UIColor.black], for: .highlighted)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "注册", style: .plain, target: self, action: #selector(rightBarButtonItemClick))
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([.foregroundColor : UIColor.black], for: .normal)
        navigationItem.rightBarButtonItem?.setTitleTextAttributes([.foregroundColor : UIColor.black], for: .highlighted)
    }
    
    func setupViews() {
        self.view.backgroundColor = UIColor.white;
    }
}
