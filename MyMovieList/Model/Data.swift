//
//  Data.swift
//  MyMovieList
//
//  Created by Uyen Nguyen Minh Duy on 21/07/2022.
//


import Foundation
import SwiftUI

var movies = decodeJsonFromJsonFile(jsonFileName: "movies.json")

//How to decode a json file into a Struct
func decodeJsonFromJsonFile(jsonFileName: String) -> [Movie] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil) {
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Movie].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Movie]
}
