//
//  MainViewController.swift
//  BlueProject
//
//  Created by June on 2022/10/18.

// MainStoryBoard 제거
// SceneDelegate 제거
// https://phillip5094.tistory.com/m/2
// Info에서 Application Scene Manifest 제거
// 프로젝트에서 Main Interface 빈값으로
/* Project 에서 파일 Viewcontroler 생성
 import UIKit
 
 @main
 class AppDelegate: UIResponder, UIApplicationDelegate {
 
 var window: UIWindow?
 
 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
 window = UIWindow(frame: UIScreen.main.bounds)
 window?.rootViewController = MainViewController() // 특정 ViewController
 window?.makeKeyAndVisible()
 
 return true. -> app delegate에 이거 복사
 오토레이 아웃 강의 보기 */
import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet var nameLabe1: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var MainImage: UIImageView!
    
    init(){
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        print("init")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //해당 Viewcontroller가 켜지면 처음실행되는 함수 (ovwrride)
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        MainImage.layer.cornerRadius = 8.0
        MainImage.clipsToBounds = true
        
        print("viewDidLoad")
        nameLabel.text = "june"
        nameLabe1.text = "park jun"
        MainImage.image = UIImage()
        button.setTitle("Edit", for: .normal)
        button.setTitle("누르는중", for: .highlighted)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("viewWillAppear")
    }
    //버튼을 눌렀을떄 실행되는 액션함수
    @IBAction func touchButton(_ sender: Any) {
        // 새로운 뷰컨트롤러가 나오게 하는 코드
        
        //화면전환버튼
        let nextVC =  AddViewController()
        nextVC.delegate = self
        self.present(nextVC, animated: true)
    }
    
}

extension MainViewController: AddViewControllerDelegate {
    func clickDoneButton(image: UIImage, text1: String, text2: String) {
        nameLabel.text = text1
        nameLabe1.text = text2
        MainImage.image = image
        
    }
}
