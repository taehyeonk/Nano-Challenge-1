//
//  Category.swift
//  Scrapbook
//
//  Created by Admin on 2022/05/02.
//

import SwiftUI
import CoreLocation

struct Category: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var active: Bool
    
    private var categoryImageName: String
    var categoryImage: Image {
        Image(categoryImageName)
    }
    
    var bookmarks: [Bookmark]
}

struct Bookmark: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var url: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
