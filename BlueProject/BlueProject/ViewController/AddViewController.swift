//
//  AddViewController.swift
//  BlueProject
//
//  Created by June on 2022/10/20.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var field: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        field.returnKeyType = .done
        field.borderStyle = .bezel
        field.textColor = .black
        field.placeholder = "입력하세요"
    }

}
