//
//  Category.swift
//  CoderSwag
//
//  Created by Romaha  on 26.12.2019.
//  Copyright © 2019 Romaha . All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String!
    private(set) public var imageName: String!
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
