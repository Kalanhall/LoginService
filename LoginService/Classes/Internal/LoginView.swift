//
//  LoginView.swift
//  LoginService
//
//  Created by Logic on 2019/11/15.
//

import UIKit

extension LoginController {
    
    func viewsSetup() {
        self.hbd_barShadowHidden = true
        self.hbd_barAlpha = 0
        self.hbd_barStyle = .blackOpaque
        let image = UIImage.image(named: "back", in:Bundle(for: type(of: self)))?.original
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: image, style: .plain, target: self, action: #selector(rightBarButtonItemClick))
        
        view.backgroundColor = UIColor.white
        
        imageView.image = UIImage.image(named: "logo", in:Bundle(for: type(of: self)))
        imageView.backgroundColor = UIColor.black
        imageView.contentMode = .center
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOffset = CGSize(width: 0, height: 3)
        imageView.layer.shadowOpacity = 0.3
        view.addSubview(imageView)
        imageView.snp_makeConstraints { (make) in
            make.left.top.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        regisBtn.setTitle("注册", for: .normal)
        regisBtn.setTitleColor(UIColor.white, for: .normal)
        regisBtn.setTitleColor(UIColor.black, for: .highlighted)
        regisBtn.setBackgroundImage(UIImage.image(color: UIColor.black), for: .normal)
        regisBtn.setBackgroundImage(UIImage.image(color: UIColor.white), for: .highlighted)
        regisBtn.layer.borderWidth = 1
        regisBtn.layer.borderColor = UIColor.black.cgColor
        regisBtn.layer.shadowColor = UIColor.black.cgColor
        regisBtn.layer.shadowOffset = CGSize(width: 3, height: 3)
        regisBtn.layer.shadowOpacity = 0.3
        view.addSubview(regisBtn)
        regisBtn.snp_makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(imageView.snp_bottom).offset(60.auto())
            make.width.equalToSuperview().multipliedBy(0.7)
            make.height.equalTo(45.auto())
        }
        
        loginBtn.setTitle("登陆", for: .normal)
        loginBtn.setTitleColor(UIColor.black, for: .normal)
        loginBtn.setTitleColor(UIColor.white, for: .highlighted)
        loginBtn.setBackgroundImage(UIImage.image(color: UIColor.white), for: .normal)
        loginBtn.setBackgroundImage(UIImage.image(color: UIColor.black), for: .highlighted)
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.black.cgColor
        loginBtn.layer.shadowColor = UIColor.black.cgColor
        loginBtn.layer.shadowOffset = CGSize(width: 3, height: 3)
        loginBtn.layer.shadowOpacity = 0.3
        view.addSubview(loginBtn)
        loginBtn.snp_makeConstraints { (make) in
            make.centerX.width.height.equalTo(regisBtn)
            make.top.equalTo(regisBtn.snp_bottom).offset(30.auto())
        }
        
    }
    
}
