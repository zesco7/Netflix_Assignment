//
//  FirstViewController.swift
//  Netflix_Assignment
//
//  Created by Mac Pro 15 on 2022/09/28.
//

import UIKit
import SnapKit

class FirstViewController: BaseViewController {
    
    var mainView = FirstView()
    
    override func loadView() {
        self.view = mainView
        
        mainView.contentsButtonWithImage.addTarget(self, action: #selector(contentsButtonWithImageClicked), for: .touchUpInside)
    }
    
    @objc func contentsButtonWithImageClicked() {
        let vc = LoginViewController()
        present(vc, animated: true)
        
    }
}
