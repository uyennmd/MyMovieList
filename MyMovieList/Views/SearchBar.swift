//
//  LanguageView.swift
//  MyMovieList
//
//  Created by Uyen Nguyen Minh Duy on 07/08/2022.
//

import Foundation
import SwiftUI

func Sort(l: String){
    let sortLanguage = movies.allSatisfy({$0.language == l})
    LanguageView(sortLanguage)
}

struct LanguageView: View {
    let sortLanguage: [Movie]
    var body: some View {
        List {
            ForEach(sortLanguage) { (movie:Movie) in
               
                MovieRow(movie: movie)
                
            }
            .onDelete { offets in
                movies.remove(atOffsets: offets)
            }
        }
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView(sortLanguage: )
    }
}
