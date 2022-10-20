//
//  TabBarController.swift
//  BlueProject
//
//  Created by June on 2022/10/18.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc1 = MainViewController()
        let vc2  = LoginViewController()
        self.setViewControllers([vc1,vc2], animated: false)
         
       
    }
}
