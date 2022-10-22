//
//  LoginViewController.swift
//  BlueProject
//
//  Created by June on 2022/10/18.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var kakaoimage: UIImageView!
    @IBOutlet var button: UIButton!
    @IBOutlet var kakaofield: UITextField!
    @IBOutlet var kakaofield2: UITextField!
    init(){
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 2)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        kakaofield.returnKeyType = .done
        kakaofield.borderStyle = .bezel
        kakaofield.textColor = .black
        kakaofield.placeholder = "아이디를 적어주세요"
        kakaofield2.returnKeyType = .done
        kakaofield2.borderStyle = .bezel
        kakaofield2.textColor = .black
        kakaofield2.placeholder = "비밀번호를 적어주세요"
        //kakao iamge view  extension은 mainviewcontroller 에 있음
        let url = URL(string: "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FSq4OD%2Fbtqzlkr13eD%2FdYwFnscXEA6YIOHckdPDDk%2Fimg.jpg")
        kakaoimage.load(url : url!)
        
    }
    @IBAction func buttonAction(_ sender: Any) {
        let vc = AddViewController()
        self.navigationController?.pushViewController(vc, animated: true)
//        self.navigationController?.popViewController(animated: <#T##Bool#>)
    }
}
