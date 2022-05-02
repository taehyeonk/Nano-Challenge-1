//
//  Category.swift
//  Scrapbook
//
//  Created by Admin on 2022/05/02.
//

import Foundation
import SwiftUI
import CoreLocation

struct Category: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
