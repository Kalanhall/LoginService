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
    
    let logo = UIImageView()
    let logoTitle = UILabel()
    
    let disposeBag = DisposeBag()
    let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewsSetup()
        eventSetup()
    }
    
    func eventSetup() {
        
    }

    @objc func rightBarButtonItemClick() {
        self.dismiss(animated: true, completion: nil)
    }
}
