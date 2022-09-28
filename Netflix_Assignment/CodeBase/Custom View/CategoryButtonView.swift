//
//  CategoryButtonView.swift
//  Netflix_Assignment
//
//  Created by Mac Pro 15 on 2022/09/28.
//

import UIKit

class CategoryButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        setTitleColor(.white, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 16)
        tintColor = .white
    }
}
