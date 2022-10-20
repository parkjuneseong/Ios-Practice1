//
//  LoginViewController.swift
//  BlueProject
//
//  Created by June on 2022/10/18.
//

import UIKit

class LoginViewController: UIViewController {
    
    init(){
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 2)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
