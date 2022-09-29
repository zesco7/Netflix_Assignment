//
//  LoginView.swift
//  Netflix_Assignment
//
//  Created by Mac Pro 15 on 2022/09/29.
//

import Foundation
import UIKit

class LoginView: BaseView {
    
    let titleLabel: UILabel = {
        let view = UILabel()
        view.text = "JACKFLIX"
        view.textColor = .red
        view.font = .systemFont(ofSize: 30, weight: .bold)
        view.textAlignment = .center
        return view
    }()
    
    let emailTextField: CustomTextField = {
       let view = CustomTextField()
        view.placeholder = "이메일 주소 또는 전화번호"
        return view
    }()
    
    let passwordTextField: CustomTextField = {
       let view = CustomTextField()
        view.placeholder = "비밀번호"
        return view
    }()

    let nicknameTextField: CustomTextField = {
       let view = CustomTextField()
        view.placeholder = "닉네임"
        return view
    }()

    let locationTextField: CustomTextField = {
       let view = CustomTextField()
        view.placeholder = "위치"
        return view
    }()

    let recommendationCodeTextField: CustomTextField = {
       let view = CustomTextField()
        view.placeholder = "추천코드 입력"
        return view
    }()
    
    let signUpButton: UIButton = {
       let view = UIButton()
        view.setTitle("회원가입", for: .normal)
        view.backgroundColor = .white
        view.setTitleColor(UIColor.black, for: .normal)
        view.titleLabel?.textAlignment = .center
        view.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let addInformationLabel: UILabel = {
       let view = UILabel()
        view.text = "추가 정보 입력"
        view.textColor = .white
        view.font = .systemFont(ofSize: 18)
        return view
    }()
    
    let switchButton: UISwitch = {
       let view = UISwitch()
        view.tintColor = .red
        view.onTintColor = .red
        view.isOn = true
        return view
    }()
    
    override func configureUI() {
        [titleLabel, emailTextField, passwordTextField, nicknameTextField, locationTextField, recommendationCodeTextField, signUpButton, addInformationLabel, switchButton].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(50)
            make.width.lessThanOrEqualTo(200)
            make.height.equalTo(40)
            make.centerX.equalTo(self)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(150)
            make.leadingMargin.equalTo(40)
            make.trailingMargin.equalTo(-40)
            make.height.equalTo(40)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(10)
            make.leadingMargin.equalTo(40)
            make.trailingMargin.equalTo(-40)
            make.height.equalTo(40)
        }
        
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(10)
            make.leadingMargin.equalTo(40)
            make.trailingMargin.equalTo(-40)
            make.height.equalTo(40)
        }
        
        locationTextField.snp.makeConstraints { make in
            make.top.equalTo(nicknameTextField.snp.bottom).offset(10)
            make.leadingMargin.equalTo(40)
            make.trailingMargin.equalTo(-40)
            make.height.equalTo(40)
        }
                
        recommendationCodeTextField.snp.makeConstraints { make in
            make.top.equalTo(locationTextField.snp.bottom).offset(10)
            make.leadingMargin.equalTo(40)
            make.trailingMargin.equalTo(-40)
            make.height.equalTo(40)
        }
        
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(recommendationCodeTextField.snp.bottom).offset(10)
            make.leadingMargin.equalTo(40)
            make.trailingMargin.equalTo(-40)
            make.height.equalTo(50)
        }
        
        addInformationLabel.snp.makeConstraints { make in
            make.top.centerY.equalTo(switchButton)
            make.leadingMargin.equalTo(40)
        }
        
        switchButton.snp.makeConstraints { make in
            make.top.equalTo(signUpButton.snp.bottom).offset(20)
            make.trailingMargin.equalTo(-60)
            make.size.equalTo(30)
        }
        
    }
    
}
