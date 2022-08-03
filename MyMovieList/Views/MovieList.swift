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

struct MovieList: View {
    var body: some View {
        NavigationView {
            List(movies) {
                movie in
                NavigationLink {
                    MovieCard(movie: movie)
                } label: {
                    MovieRow(movie: movie)
                }
                .navigationTitle("My Movie List")
            }
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}

