//
//  AddViewController.swift
//  BlueProject
//
//  Created by June on 2022/10/20.
//

import UIKit

protocol AddViewControllerDelegate: AnyObject {
    func clickDoneButton(image: UIImage, text1: String, text2: String)
}

class AddViewController: UIViewController {
    
    @IBOutlet var profile: UILabel!
    @IBOutlet var CancelButton: UIButton!
    @IBOutlet var DoneButton: UIButton!
    @IBOutlet var AddButton: UIButton!
    @IBOutlet var field2: UITextField!
    @IBOutlet var field: UITextField!
    @IBOutlet var imageView: UIImageView!
    let picker = UIImagePickerController()
    
    weak var delegate: AddViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        
//        DoneButton.text = "Done"
//        CancelButton.text = "Cancel"
        profile.text = "프로필"
        field.returnKeyType = .done
        field.borderStyle = .bezel
        field.textColor = .black
        field.placeholder = "아이디를 적어주세요"
        field2.returnKeyType = .done
        field2.borderStyle = .bezel
        field2.textColor = .black
        field2.placeholder = "닉네임을 적어주세요"
        AddButton.tintColor = .white
        
        
        
    }
    
    func openLibrary() {  picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)}
    func openCamera(){
        if(UIImagePickerController .isSourceTypeAvailable(.camera)){
            picker.sourceType = .camera
            present(picker, animated: false, completion: nil)
        }
        else{
            print("카메라를 사용할 수 없음.")
        }
    }
    
    @IBAction func cameraButtonAc(_ sender: Any) {
        
        
        
        let alert =  UIAlertController(title: "원하는 타이틀", message: "원하는 메세지", preferredStyle: .actionSheet)
        let library =  UIAlertAction(title: "사진앨범", style: .default) { (action) in self.openLibrary()
            
        }
        let camera =  UIAlertAction(title: "카메라", style: .default) { (action) in self.openCamera()
            
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(library)
        alert.addAction(camera)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func doneButtonAction(_ sender: Any) {
        delegate?.clickDoneButton(image: imageView.image ?? UIImage(), text1: field.text ?? "", text2: field2.text ?? "")
        dismiss(animated: true)
    }
}


extension AddViewController : UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}
