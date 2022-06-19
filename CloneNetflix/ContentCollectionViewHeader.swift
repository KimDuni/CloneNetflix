//
//  ContentCollectionViewHeader.swift
//  CloneNetflix
//
//  Created by 김성준 on 2022/06/19.
//

import UIKit

import SnapKit

//UICollectionReusableView여야 헤더 또는 푸터가 될 수 있다.
final class ContentCollectionViewHeader: UICollectionReusableView {
    let sectionNameLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        sectionNameLabel.font = .systemFont(ofSize: 17.0, weight: .bold)
        sectionNameLabel.textColor = .white
        sectionNameLabel.sizeToFit()
        
        addSubview(sectionNameLabel)
        
        sectionNameLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.top.bottom.leading.equalToSuperview().offset(10)
        }
    }
}
