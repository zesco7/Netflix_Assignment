//
//  FirstView.swift
//  Netflix_Assignment
//
//  Created by Mac Pro 15 on 2022/09/28.
//

import UIKit
import SnapKit

class FirstView: BaseView {
    
    let backgroundImage: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .orange
        view.image = UIImage(named: "어벤져스엔드게임")
        return view
    }()
    
    let logoLabel: UILabel = {
        let view = UILabel()
        view.text = "N"
        view.textColor = .white
        view.font = .systemFont(ofSize: 40, weight: .bold)
        return view
    }()

    let tvButton: CategoryButton = {
        let view = CategoryButton()
        view.setTitle("TV프로그램", for: .normal)

        return view
    }()

    let movieButton: CategoryButton = {
        let view = CategoryButton()
        view.setTitle("영화", for: .normal)
        return view
    }()

    let contentsButton: CategoryButton = {
        let view = CategoryButton()
        view.setTitle("내가 찜한 콘텐츠", for: .normal)
        return view
    }()

    let contentsButtonWithImage: CategoryButton = {
        let view = CategoryButton()
        view.setImage(UIImage(systemName: "checkmark"), for: .normal)
        return view
    }()

    let playButtonWithImage: CategoryButton = {
        let view = CategoryButton()
        view.setImage(UIImage(systemName: "play.rectangle"), for: .normal)
        return view
    }()

    let detailsButtonWithImage: CategoryButton = {
        let view = CategoryButton()
        view.setImage(UIImage(systemName: "info.circle"), for: .normal)
        return view
    }()

    let contentsButtonLabel: CustomLabel = {
        let view = CustomLabel()
        view.text = "내가 찜한 콘텐츠"
        view.font = .systemFont(ofSize: 15, weight: .bold)
        return view
    }()

    let playButtonLabel: CustomLabel = {
        let view = CustomLabel()
        view.text = "재생"
        view.font = .systemFont(ofSize: 15, weight: .bold)
        return view
    }()

    let detailsButtonLabel: CustomLabel = {
        let view = CustomLabel()
        view.text = "정보"
        view.font = .systemFont(ofSize: 15, weight: .bold)
        return view
    }()

    let previewLabel: CustomLabel = {
        let view = CustomLabel()
        view.text = "미리보기"
        view.font = .systemFont(ofSize: 20, weight: .bold)
        return view
    }()

    let previewImage: PreviewImage = {
        let view = PreviewImage(image: UIImage(named: "해운대"))

        return view
    }()

    let previewImage2: PreviewImage = {
        let view = PreviewImage(image: UIImage(named: "암살"))

        return view
    }()

    let previewImage3: PreviewImage = {
        let view = PreviewImage(image: UIImage(named: "왕의남자"))

        return view
    }()
    
    override func configureUI() {
        [backgroundImage, logoLabel, tvButton, movieButton, contentsButton, contentsButtonWithImage, playButtonWithImage, detailsButtonWithImage, contentsButtonLabel, playButtonLabel, detailsButtonLabel, previewLabel, previewImage, previewImage2, previewImage3].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraints() {
        backgroundImage.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.width.equalTo(self)
            make.height.equalTo(self).multipliedBy(0.65)
            make.centerX.equalTo(self)
        }

        logoLabel.snp.makeConstraints { make in
            make.top.equalTo(backgroundImage.snp.top).offset(30)
            make.leadingMargin.equalTo(10)
            make.width.greaterThanOrEqualTo(50)
            make.height.equalTo(30)
        }

        tvButton.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(30)
            make.trailing.equalTo(movieButton.snp.leading).offset(-30)
            make.width.equalTo(80)
            make.height.equalTo(20)
        }

        movieButton.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(30)
            make.trailing.equalTo(contentsButton.snp.leading).offset(-30)
            make.width.equalTo(80)
            make.height.equalTo(20)
        }

        contentsButton.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(30)
            make.trailing.equalTo(backgroundImage.snp.trailing).offset(-30)
            make.width.equalTo(80)
            make.height.equalTo(20)
        }

        contentsButtonWithImage.snp.makeConstraints { make in
            make.bottom.equalTo(backgroundImage.snp.bottom).offset(-30)
            make.size.equalTo(80)
            make.trailing.equalTo(playButtonWithImage.snp.leading).offset(-60)
        }

        playButtonWithImage.snp.makeConstraints { make in
            make.bottom.equalTo(backgroundImage.snp.bottom).offset(-30)
            make.size.equalTo(80)
            make.centerX.equalTo(self)
        }

        detailsButtonWithImage.snp.makeConstraints { make in
            make.bottom.equalTo(backgroundImage.snp.bottom).offset(-30)
            make.trailing.equalTo(backgroundImage.snp.trailing).offset(-30)
            make.size.equalTo(80)
            make.leading.equalTo(playButtonWithImage.snp.trailing).offset(60)
        }

        contentsButtonLabel.snp.makeConstraints { make in
            make.top.equalTo(contentsButtonWithImage).offset(25)
            make.width.equalTo(120)
            make.height.equalTo(80)
            make.centerX.equalTo(contentsButtonWithImage)
        }

        playButtonLabel.snp.makeConstraints { make in
            make.top.equalTo(contentsButtonWithImage).offset(25)
            make.width.equalTo(120)
            make.height.equalTo(80)
            make.centerX.equalTo(playButtonWithImage)
        }

        detailsButtonLabel.snp.makeConstraints { make in
            make.top.equalTo(contentsButtonWithImage).offset(25)
            make.size.equalTo(80)
            make.centerX.equalTo(detailsButtonWithImage)
        }

        previewLabel.snp.makeConstraints { make in
            make.top.equalTo(backgroundImage.snp.bottom).offset(30)
            make.leading.equalTo(self).offset(10)
            make.width.equalTo(80)
            make.height.equalTo(20)
        }

        previewImage.snp.makeConstraints { make in
            make.top.equalTo(previewLabel.snp.bottom).offset(10)
            make.trailing.equalTo(previewImage2.snp.leading).offset(-40)
            make.size.equalTo(100)
        }

        previewImage2.snp.makeConstraints { make in
            make.top.equalTo(previewLabel.snp.bottom).offset(10)
            make.centerX.equalTo(backgroundImage)
            make.size.equalTo(100)
        }

        previewImage3.snp.makeConstraints { make in
            make.top.equalTo(previewLabel.snp.bottom).offset(10)
            make.leading.equalTo(previewImage2.snp.trailing).offset(40)
            make.size.equalTo(100)
        }
    }
}
