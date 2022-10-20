//
//  AddViewController.swift
//  BlueProject
//
//  Created by June on 2022/10/20.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var AddButton: UIButton!
    @IBOutlet var field2: UITextField!
    @IBOutlet var field: UITextField!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        field.returnKeyType = .done
        field.borderStyle = .bezel
        field.textColor = .black
        field.placeholder = "아이디입력하세요"
        field2.returnKeyType = .done
        field2.borderStyle = .bezel
        field2.textColor = .black
        field2.placeholder = "닉네임입력하세요"
        AddButton.tintColor = .white
        
        
        
    }
    
    @IBAction func cameraButtonAc(_ sender: Any) {
        
    }
    
}
