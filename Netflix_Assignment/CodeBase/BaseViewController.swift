//
//  CodeBaseViewController.swift
//  Netflix_Assignment
//
//  Created by Mac Pro 15 on 2022/09/28.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black

        //configure()
    }
    
    //func configure() { }
    
    override func viewDidAppear(_ animated: Bool) {
        let vc = FirstViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
}





