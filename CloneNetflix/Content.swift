//
//  Content.swift
//  CloneNetflix
//
//  Created by 김성준 on 2022/06/19.
//

import Foundation
import UIKit

struct Content: Decodable {
    enum SectionType: String, Decodable {
        case basic
        case main
        case large
        case rank
    }
    
    let sectionType: SectionType
    let sectionName: String
    let contentItem: [Item]
}

struct Item: Decodable {
    let description: String
    let imageName: String
    
    var image: UIImage {
        return UIImage(named: imageName) ?? UIImage()
    }
}
