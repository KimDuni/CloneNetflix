//
//  ContentCollectionViewMainCell.swift
//  CloneNetflix
//
//  Created by 김성준 on 2022/06/19.
//

import UIKit

import SnapKit

final class ContentCollectionViewMainCell: UICollectionViewCell {
    let baseStackView = UIStackView()
    let menuStackView = UIStackView()
    
    let tvButton = UIButton()
    let movieButton = UIButton()
    let categoryButton = UIButton()
    
    let imageView = UIImageView()
    let descriptionlabel = UILabel()
    let contentStackView = UIStackView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        [baseStackView,
         menuStackView].forEach { view in
            contentView.addSubview(view)
        }
        
        //base layout
        baseStackView.axis = .vertical
        baseStackView.alignment = .center
        baseStackView.distribution = .fillProportionally
        baseStackView.spacing = 5
        
        [imageView,
        descriptionlabel,
        contentStackView]
            .forEach { view in
                baseStackView.addArrangedSubview(view)
            }
        
        imageView.contentMode = .scaleAspectFit
        imageView.snp.makeConstraints { make in
            make.width.top.leading.trailing.equalToSuperview()
            make.height.equalTo(imageView.snp.width)
        }
        
        
        descriptionlabel.font = .systemFont(ofSize: 13, weight: .medium)
        descriptionlabel.textColor = .white
        descriptionlabel.sizeToFit()
        
        contentStackView.axis = .horizontal
        contentStackView.alignment = .center
        contentStackView.distribution = .equalCentering
        contentStackView.spacing = 20
        
        contentStackView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        
        baseStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        
        //menu layout
        menuStackView.axis = .horizontal
        menuStackView.alignment = .center
        menuStackView.distribution = .equalSpacing
        menuStackView.spacing = 20
        
        menuStackView.snp.makeConstraints { make in
            make.top.equalTo(baseStackView)
            make.leading.trailing.equalToSuperview().inset(30)
        }
        
        [tvButton,
         movieButton,
         categoryButton]
            .forEach { button in
                menuStackView.addSubview(button)
                button.setTitleColor(.white, for: .normal)
                button.layer.shadowColor = UIColor.black.cgColor
                button.layer.shadowOpacity = 1
                button.layer.shadowRadius = 3
            }
        
        tvButton.setTitle("TV 프로그램", for: .normal)
        movieButton.setTitle("영화", for: .normal)
        categoryButton.setTitle("카테고리", for: .normal)
        
        tvButton.addTarget(self, action: #selector(tvButtonTapped(sender:)), for: .touchUpInside)
        movieButton.addTarget(self, action: #selector(movieButtonTapped(sender:)), for: .touchUpInside)
        categoryButton.addTarget(self, action: #selector(categoryButtonTapped(sender:)), for: .touchUpInside)
        
    }
    
    @objc
    func tvButtonTapped(sender: UIButton) {
        print("tvButtonTapped")
    }
    
    @objc
    func movieButtonTapped(sender: UIButton) {
        print("movieButtonTapped")
    }
    
    @objc
    func categoryButtonTapped(sender: UIButton) {
        print("categoryButtonTapped")
    }
}


