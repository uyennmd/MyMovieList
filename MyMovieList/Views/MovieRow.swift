//
//  MovieRow.swift
//  MyMovieList
//
//  Created by Uyen Nguyen Minh Duy on 27/07/2022.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    var body: some View {
        HStack {
            Text(movie.name)
        }
    }
}


