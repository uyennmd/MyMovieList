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
            movie.poster
                .resizable()
                .frame(width: 50, height: 50)
            Text(movie.name)
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MovieRow(movie: movies[0])
                .previewLayout(.fixed(width: 300, height: 70))
            MovieRow(movie: movies[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}


