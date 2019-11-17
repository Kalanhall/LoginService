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
            make.top.equalToSuperview().inset(80.auto())
            make.width.height.equalTo(60.auto())
        }
        
        logoTitle.text = "BASE SWIFT PROJECT."
        logoTitle.font = UIFont.boldSystemFont(ofSize: 15)
        view.addSubview(logoTitle)
        logoTitle.snp_makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(logo.snp_bottom).inset(-5)
        }
        
        view.addSubview(shadowView)
        shadowView.snp_makeConstraints { (make) in
            make.left.equalTo(30.auto())
            make.right.equalTo(-30.auto())
            make.height.equalTo(shadowView.snp_width).multipliedBy(0.8)
            make.centerY.equalToSuperview().offset(60.auto())
        }
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOpacity = 0.1
        shadowView.layer.shadowOffset = CGSize(width: 3, height: 3)
        
        // Another shadow
        let subShadow = UIView()
        subShadow.backgroundColor = UIColor.white
        view.insertSubview(subShadow, belowSubview: shadowView)
        subShadow.snp_makeConstraints { (make) in
            make.left.right.equalTo(shadowView).inset(15.auto())
            make.bottom.equalTo(shadowView).inset(-5)
            make.height.equalTo(20)
        }
        subShadow.layer.shadowColor = UIColor.black.cgColor
        subShadow.layer.shadowOpacity = 0.1
        subShadow.layer.shadowOffset = CGSize(width: 3, height: 3)
        
        userIcon.image = UIImage.image(named: "icon", in:Bundle(for: type(of: self)))
        userIcon.layer.cornerRadius = 30
        userIcon.layer.masksToBounds = true
        userIcon.backgroundColor = UIColor.color(hexNumber: 0xF5F5F5)
        userIcon.contentMode = .center
        view.addSubview(userIcon)
        userIcon.snp_makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(shadowView)
            make.width.height.equalTo(60.auto())
        }
        
        userName.text = "User Name"
        userName.font = UIFont.boldSystemFont(ofSize: 15)
        userName.textAlignment = .center
        view.addSubview(userName)
        userName.snp_makeConstraints { (make) in
            make.left.right.equalTo(shadowView).inset(15)
            make.top.equalTo(userIcon.snp_bottom).inset(-10)
        }
        
        let line = UIView()
        line.backgroundColor = UIColor.color(hexNumber: 0xE5E5E5)
        shadowView.addSubview(line)
        line.snp_makeConstraints { (make) in
            make.left.equalTo(30.auto())
            make.right.equalTo(-30.auto())
            make.height.equalTo(1)
            make.centerY.equalToSuperview().inset(30.auto())
        }
        
        account.placeholder = "Enter your email"
        account.textAlignment = .center
        account.textColor = UIColor.black
        account.font = UIFont.systemFont(ofSize: 14)
        view.addSubview(account)
        account.snp_makeConstraints { (make) in
            make.left.right.equalTo(line)
            make.bottom.equalTo(line.snp_top)
            make.height.equalTo(35)
        }
        
        forget.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        forget.setTitle("Forget password?", for: .normal)
        forget.setTitleColor(UIColor.color(hexNumber: 0x666666), for: .normal)
        forget.setTitleColor(UIColor.lightGray, for: .highlighted)
        view.addSubview(forget)
        forget.snp_makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(line.snp_bottom).inset(-10)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
//        forget.isHidden = true
        
        loginBtn.layer.cornerRadius = 20
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.masksToBounds = true
        loginBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        loginBtn.setTitle("NEXT", for: .normal)
        loginBtn.setTitle("SIGN IN", for: .selected)
        loginBtn.setTitleColor(UIColor.black, for: .highlighted)
        loginBtn.setBackgroundImage(UIImage.image(color: UIColor.black), for: .normal)
        loginBtn.setBackgroundImage(UIImage.image(color: UIColor.black), for: .selected)
        loginBtn.setBackgroundImage(UIImage.image(color: UIColor.white), for: .highlighted)
        view.addSubview(loginBtn)
        loginBtn.snp_makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(shadowView.snp_bottom)
            make.width.equalTo(120)
            make.height.equalTo(40)
        }
        
        let loginbg = UIView()
        loginbg.backgroundColor = UIColor.white
        loginbg.layer.shadowColor = UIColor.black.cgColor
        loginbg.layer.shadowOpacity = 0.2
        loginbg.layer.shadowOffset = CGSize(width: 0, height: 3)
        loginbg.layer.cornerRadius = 20
        view.insertSubview(loginbg, belowSubview: loginBtn)
        loginbg.snp_makeConstraints { (make) in
            make.edges.equalTo(loginBtn)
        }
        
        regisBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        regisBtn.setTitle("SIGN UP", for: .normal)
        regisBtn.setTitleColor(UIColor.black, for: .normal)
        regisBtn.setTitleColor(UIColor.lightGray, for: .highlighted)
        view.addSubview(regisBtn)
        regisBtn.snp_makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(shadowView.snp_bottom).inset(-40.auto())
            make.width.equalTo(120)
            make.height.equalTo(40)
        }
    }
    
}

class LoginShadow: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(UIColor.white.cgColor)
        context?.move(to: CGPoint(x: 0, y: self.bounds.size.height * 1/4.0))
        context?.addLine(to: CGPoint(x: self.bounds.size.width, y: 0))
        context?.addLine(to: CGPoint(x: self.bounds.size.width, y: self.bounds.size.height))
        context?.addLine(to: CGPoint(x: 0, y: self.bounds.size.height))
        context?.closePath()
        context?.fillPath()
        
        super.draw(rect)
    }
}
