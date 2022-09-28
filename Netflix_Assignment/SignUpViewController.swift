//
//  SignUpViewController.swift
//  Netflix_Assignment
//
//  Created by Mac Pro 15 on 2022/08/26.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailOrNumberTextField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var promotionCodeTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signUpSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        emailOrNumberTextField.placeholder = "이메일 주소 또는 전화번호"
        emailOrNumberTextField.backgroundColor = .systemGray
        emailOrNumberTextField.layer.cornerRadius = 10
        emailOrNumberTextField.textAlignment = .center
        
        passwordField.placeholder = "비밀번호"
        passwordField.backgroundColor = .systemGray
        passwordField.layer.cornerRadius = 10
        passwordField.textAlignment = .center
        passwordField.isSecureTextEntry = true
        
        nicknameTextField.placeholder = "닉네임"
        nicknameTextField.backgroundColor = .systemGray
        nicknameTextField.layer.cornerRadius = 10
        nicknameTextField.textAlignment = .center
        
        locationTextField.placeholder = "위치"
        locationTextField.backgroundColor = .systemGray
        locationTextField.layer.cornerRadius = 10
        locationTextField.textAlignment = .center
        
        promotionCodeTextField.placeholder = "추천코드 입력"
        promotionCodeTextField.backgroundColor = .systemGray
        promotionCodeTextField.layer.cornerRadius = 10
        promotionCodeTextField.textAlignment = .center
        promotionCodeTextField.keyboardType = .numberPad
            
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = 5
        signUpButton.titleLabel?.textAlignment = NSTextAlignment.center
        signUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)

        signUpSwitch.onTintColor = .red
  
    }
    
    @IBAction func signUpButtonClicked(_ sender: UIButton) {
        if emailOrNumberTextField.hasText == false {
            emailOrNumberTextField.attributedPlaceholder = NSAttributedString(string: "이메일 또는 전화번호는 필수입력입니다.", attributes: [.foregroundColor : UIColor.red])
        }
        if passwordField.hasText == false {
            passwordField.attributedPlaceholder = NSAttributedString(string: "비밀번호는 필수입력입니다.", attributes: [.foregroundColor : UIColor.red])
        }
        
        /*1.왜 위에 코드는 되고 아래코드는 안되는지?, 2.guard let표현으로는 어떻게 변경?
        if emailOrNumberTextField.text == nil && passwordField.text == nil {
            emailOrNumberTextField.text = "이메일 주소 또는 전화번호는 필수입력입니다."
            passwordField.text = "비밀번호는 필수입력입니다."
        }
         */
       
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
 

}
