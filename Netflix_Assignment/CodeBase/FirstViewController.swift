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
    }

    override func viewDidLoad() {
        super.viewDidLoad()
                
    }
}
