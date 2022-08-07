/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Minh Duy Uyen
  ID: s3819342
  Created  date: 25/07/2022
  Last modified: 07/08/2022
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
    @State var Movies = movies
    @State private var searchText = ""
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredMovie) { (movie:Movie) in
                    NavigationLink {
                        MovieCard(movie: movie)
                    } label: {
                        MovieRow(movie: movie)
                    }
                }
                .onDelete { offets in
                    Movies.remove(atOffsets: offets)
                }
            }.navigationTitle("My Movie List")
             .searchable(text: $searchText, prompt: "Search for a movie")
            .toolbar {
                EditButton()
            }
        }
    }
    
    var filteredMovie: [Movie] {
        if searchText.isEmpty {
            return Movies
        } else {
            return Movies.filter{
                $0.name.localizedCaseInsensitiveContains(searchText) ||
                $0.language.localizedCaseInsensitiveContains(searchText) ||
                $0.year.localizedCaseInsensitiveContains(searchText) ||
                $0.ep.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}

