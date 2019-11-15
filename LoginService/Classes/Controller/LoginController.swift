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
        
        let image = UIImage.image(named: "back", in:Bundle(for: type(of: self)))
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: image, style: .plain, target: self, action: #selector(leftBarButtonItemClick))
        navigationItem.leftBarButtonItem?.imageInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: -8)
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
