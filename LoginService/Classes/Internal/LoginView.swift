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
        let image = UIImage.image(named: "back", in:Bundle(for: type(of: self)))
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: image, style: .plain, target: self, action: #selector(rightBarButtonItemClick))
        
        view.backgroundColor = UIColor.color(hexNumber: 0xF8F8F8)
        
        shadowView.backgroundColor = UIColor.white
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 0)
        shadowView.layer.shadowOpacity = 0.2
        view.addSubview(shadowView)
        shadowView.snp_makeConstraints { (make) in
            make.left.equalTo(30)
            make.right.equalTo(-30)
            make.height.equalTo(shadowView.snp_width).multipliedBy(0.8)
            make.centerY.equalToSuperview().offset(0)
        }
        
        logo.image = UIImage.image(named: "logo", in:Bundle(for: type(of: self)))
        logo.contentMode = .scaleAspectFit
        view.addSubview(logo)
        logo.snp_makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(shadowView.snp_top).inset(-60.auto())
            make.width.height.equalTo(60.auto())
        }
        
        logoTitle.text = "BASE SWIFT PROJECT."
        logoTitle.font = UIFont.boldSystemFont(ofSize: 15)
        view.addSubview(logoTitle)
        logoTitle.snp_makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(logo.snp_bottom).inset(-5)
        }
    }
    
}
