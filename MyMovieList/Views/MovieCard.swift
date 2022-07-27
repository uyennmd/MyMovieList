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
                    Image(movie.posterName).resizable()
                    
                    Text(movie.name)
                        .font(.system(size: 40))
                        .bold()
                    
                    Text(movie.year)
                    Text(String(movie.ep))
                        
                    
                }
            }
        }
        .navigationTitle(movie.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

