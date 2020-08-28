//
//  LoginController.swift
//  LoginService
//
//  Created by Logic on 2019/11/13.
//

import UIKit
import HBDNavigationBar
import Extensions
import SnapKit

class LoginController: UIViewController {
    
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.accountView.accountTF.placeholder = "输入您的账号"
        loginView.loginBtn.setTitle("下一步", for: .normal)
        loginView.regisBtn.setTitle("注 册", for: .normal)
        return loginView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        let image = UIImage.image(named: "back", in:Bundle(for: type(of: self)))
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: image, style: .plain, target: self, action: #selector(rightBarButtonItemClick))
        
        view.addSubview(loginView)
        loginView.snp_makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        
    }
    
    @objc func rightBarButtonItemClick() {
        self.dismiss(animated: true, completion: nil)
    }

}
