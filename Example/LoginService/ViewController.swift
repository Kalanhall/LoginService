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
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let requestValiable: Observable<Any> = Observable.create { (observer) -> Disposable in
            
            let task = URLSession.shared.dataTask(with: URL(string: "http://t.weather.sojson.com/api/weather/city/101030100")!) { (data, response, error) in
                guard error == nil else {
                    observer.onError(error!)
                    return
                }

                guard let data = data,
                    let jsonObject = try? JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                    else {
                        observer.onError(error!)
                    return
                }

                observer.onNext(jsonObject)
                observer.onCompleted()
            }

            task.resume()

            return Disposables.create { task.cancel() }
            
        }
        
        requestValiable
            .subscribe(onNext: { (rsp) in
                print("\(rsp)")
            }, onError: { (error) in
            
            }, onCompleted: {
            
            })
            .disposed(by: disposeBag)
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
