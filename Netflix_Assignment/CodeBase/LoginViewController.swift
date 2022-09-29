//
//  LoginViewController.swift
//  Netflix_Assignment
//
//  Created by Mac Pro 15 on 2022/09/29.
//

import UIKit

class LoginViewController: BaseViewController {
    
    var mainView = LoginView()
    
    override func loadView() {
        self.view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
