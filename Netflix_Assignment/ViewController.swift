//
//  ViewController.swift
//  Netflix_Assignment
//
//  Created by Mac Pro 15 on 2022/08/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainPoster: UIImageView!
    @IBOutlet weak var previewPoster1: UIImageView!
    @IBOutlet weak var previewPoster2: UIImageView!
    @IBOutlet weak var previewPoster3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        previewPoster1.layer.borderWidth = 2
        previewPoster1.layer.borderColor = UIColor.white.cgColor
        previewPoster1.layer.masksToBounds = true
        previewPoster1.layer.cornerRadius = 50
        
        previewPoster2.layer.borderWidth = 2
        previewPoster2.layer.borderColor = UIColor.white.cgColor
        previewPoster2.layer.masksToBounds = true
        previewPoster2.layer.cornerRadius = 50
        
        previewPoster3.layer.borderWidth = 2
        previewPoster3.layer.borderColor = UIColor.white.cgColor
        previewPoster3.layer.masksToBounds = true
        previewPoster3.layer.cornerRadius = 50

    }


}

