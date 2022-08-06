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
let colorNavAppear = UINavigationBarAppearance()
struct MovieList: View {
    init() {
        colorNavAppear.configureWithOpaqueBackground()
        colorNavAppear.backgroundColor = ColorConstant.movieBlue
        UIScrollView.appearance().backgroundColor = ColorConstant.moviePink
        UINavigationBar.appearance().standardAppearance =  colorNavAppear
        UINavigationBar.appearance().scrollEdgeAppearance =  colorNavAppear
    }
    var body: some View {
        NavigationView {
            List(movies) {
                movie in NavigationLink {
                    MovieCard(movie: movie)
                } label: {
                    MovieRow(movie: movie)
                }
                .navigationTitle("My Movie List")
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: CreateView()) {
                        Text("Create")
                    }
                }
            }
            
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}

