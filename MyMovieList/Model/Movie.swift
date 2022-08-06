/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Minh Duy Uyen
  ID: s3819342
  Created  date: 25/07/2022
  Last modified: 03/08/2022
  Acknowledgement: Acknowledge the resources that you use here. 
*/


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
    var listPhoto: String
    var photo: Image {
        Image(listPhoto)
    }
    var content: String
}
var array: [Movie] = {
    do {
        let fileURL = try FileManager.default.url(for: .desktopDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("movies.json")

        let data = try Data(contentsOf: fileURL)
        let decoder = JSONDecoder()
        let items = try decoder.decode([Movie].self, from: data)
        return items
    } catch {
        print(error.localizedDescription)
        return []
    }
}()
