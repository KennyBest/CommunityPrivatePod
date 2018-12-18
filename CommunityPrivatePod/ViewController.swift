//
//  ViewController.swift
//  CommunityPrivatePod
//
//  Created by Kede on 2018/12/18.
//  Copyright © 2018 Clare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "Test"
        
        let button = UIButton(type: .system)
        button.setTitle("Push", for: .normal)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(gotoCommunity), for: .touchUpInside)
        view.addSubview(button)
        
    }

    @objc func gotoCommunity() {
        if let navigationController = navigationController {
            let vc = CommunityViewController()
            navigationController.pushViewController(vc, animated: true)
        }
    }
    

}

