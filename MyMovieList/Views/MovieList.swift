//
//  MyMovieList.swift
//  MyMovieList
//
//  Created by Uyen Nguyen Minh Duy on 27/07/2022.
//

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
