//
//  CustomTextField.swift
//  Netflix_Assignment
//
//  Created by Mac Pro 15 on 2022/09/29.
//

import UIKit

class CustomTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = .systemGray5
        layer.cornerRadius = 10
        textColor = .white
        textAlignment = .center
    }
}
