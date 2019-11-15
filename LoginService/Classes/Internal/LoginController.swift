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

enum LoginOption: Int {
    case nomal = 0
    case regis = 1
    case login = 2
}

class LoginController: UIViewController {
    
    let imageView = UIImageView()
    let regisBtn = UIButton(type: .custom)
    let loginBtn = UIButton(type: .custom)
    let viewModel = LoginViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewsSetup()
        eventSetup()
    }

    @objc func rightBarButtonItemClick() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func eventSetup() {
        regisBtn.rx.tap
            .subscribe { (Void) in
                print("button Tapped")
            }
            .disposed(by: disposeBag)
        
        loginBtn.rx.tap
            .subscribe { (Void) in
                print("button Tapped")
            }
            .disposed(by: disposeBag)
    }
}
