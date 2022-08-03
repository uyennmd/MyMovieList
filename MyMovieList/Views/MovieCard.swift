//
//  MovieCard.swift
//  MyMovieList
//
//  Created by Uyen Nguyen Minh Duy on 27/07/2022.
//

import Foundation
import SwiftUI

struct MovieCard: View {
    var movie: Movie
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    Image(movie.posterName)
                        .resizable()
                        .frame(height: 250)
                        .edgesIgnoringSafeArea(.all)
                    Text(movie.name)
                        .font(.system(size: 40))
                        .bold()
                        .frame(width: 400)
                    Text("Year: " + movie.year)
                        .padding()
                    Text("Episode: " + movie.ep)
                }
            }
        }
        .navigationTitle(movie.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard(movie: movies[0])
    }
}

