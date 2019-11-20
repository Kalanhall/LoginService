//
//  ViewController.swift
//  LoginService
//
//  Created by Kalanhall@163.com on 11/13/2019.
//  Copyright (c) 2019 Kalanhall@163.com. All rights reserved.
//

import UIKit
import KLNavigationController
import LoginServiceInterface

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func modal(_ sender: Any) {
        let vc = KLServer.shared().login(with: nil)
        let nc = KLNavigationController(rootViewController: vc)
        present(nc, animated: true, completion: nil)
    }
}

