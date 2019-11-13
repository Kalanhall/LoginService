//
//  LoginController.swift
//  LoginService
//
//  Created by Logic on 2019/11/13.
//

import UIKit

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        
        let bundle = Bundle(for: type(of: self))
        if let url = URL(string: bundle.bundleIdentifier ?? "") {
            if let bundleURL = bundle.url(forResource: url.pathExtension, withExtension: "bundle") {
                let imageBundle = Bundle(url: bundleURL)
                let image = UIImage(named: "back", in: imageBundle, compatibleWith: nil)
                navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: image, style: .plain, target: self, action: #selector(leftBarButtonItemClick))
            }
        }
    }

    @objc func leftBarButtonItemClick() {
        self.dismiss(animated: true, completion: nil)
    }
}
