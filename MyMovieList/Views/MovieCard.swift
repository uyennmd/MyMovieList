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
                        .aspectRatio(contentMode: .fill)
                    Text(movie.name)
                        .font(.system(size: 40))
                        .bold()
                        .multilineTextAlignment(.center)
                    VStack {
                        HStack {
                            Text("Year: " + movie.year)
                            Spacer()
                            Text("Episode: " + movie.ep)
                        }
                        
                        HStack {
                            Text("Language: " + movie.language)
                                .lineSpacing(20)
                            Spacer()
                        }

                    }.aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 60, alignment: .top)
                        
                    
                    Text(movie.content)
                        .frame(width: 350)
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

