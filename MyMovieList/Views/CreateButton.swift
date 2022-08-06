//
//  CreateButton.swift
//  MyMovieList
//
//  Created by Uyen Nguyen Minh Duy on 06/08/2022.
//

import Foundation
import SwiftUI



struct CreateButton: View {
//
//    let text: String
//    let url: String
//    let imageName: String
//
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(ColorConstant.pink)
            .frame(width: 360,height: 50.0)
            .overlay(HStack {
                NavigationLink(destination: MovieList()) {
                    Text("Create")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }
                
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CreateButton_Previews: PreviewProvider {
    static var previews: some View {
        CreateButton()
    }
}
