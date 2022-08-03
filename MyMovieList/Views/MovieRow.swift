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


import SwiftUI

struct MovieRow: View {
    var movie: Movie
    var body: some View {
        HStack {
            movie.photo
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
            Text(movie.name)
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MovieRow(movie: movies[0])
                .previewLayout(.fixed(width: 300, height: 120))
            MovieRow(movie: movies[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}


