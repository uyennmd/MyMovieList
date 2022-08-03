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

