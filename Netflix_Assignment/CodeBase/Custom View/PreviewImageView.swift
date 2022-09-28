//
//  PreviewImageView.swift
//  Netflix_Assignment
//
//  Created by Mac Pro 15 on 2022/09/28.
//

import UIKit

class PreviewImage: UIImageView {
    override init(image: UIImage?) {
        super.init(image: image)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 50
        layer.masksToBounds = true
    }
}

