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
        
        logo.image = UIImage.image(named: "logo", in:Bundle(for: type(of: self)))
        logo.contentMode = .scaleAspectFit
        view.addSubview(logo)
        logo.snp_makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(80.auto())
            make.width.height.equalTo(60.auto())
        }
        
        logoTitle.text = "Just Do It."
        logoTitle.font = UIFont.boldSystemFont(ofSize: 15)
        view.addSubview(logoTitle)
        logoTitle.snp_makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(logo.snp_bottom).inset(-10)
        }
    }
    
}
