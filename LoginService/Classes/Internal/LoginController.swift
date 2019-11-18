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
import RxSwift
import RxCocoa

class LoginController: UIViewController {
    
    let logo        = UIImageView()
    let logoTitle   = UILabel()
    let accountView = CustomShadowView()
    let userIcon    = UIImageView()
    let userName    = UILabel()
    let loginBtn    = UIButton()
    let regisBtn    = UIButton()
    let backBtn     = UIButton() // 返回按钮
    
    let disposeBag = DisposeBag()
    let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewsSetup()
        eventSetup()
    }
    
    func eventSetup() {
        
        loginBtn.rx.tap.subscribe { [weak self] (Void) in
            
        }.disposed(by: disposeBag)
        
    }

    @objc func rightBarButtonItemClick() {
        self.dismiss(animated: true, completion: nil)
    }
}
