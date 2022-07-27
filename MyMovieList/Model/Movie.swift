//
//  Movie.swift
//  MyMovieList
//
//  Created by Uyen Nguyen Minh Duy on 21/07/2022.
//

import Foundation
import SwiftUI

struct Movie: Identifiable, Codable {
    var id: Int
    var name: String
    var language: String
    var year: String
    var ep: String
    var posterName: String
    var poster: Image {
        Image(posterName)
    }
}
