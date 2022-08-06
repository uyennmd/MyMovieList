/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Minh Duy Uyen
  ID: s3819342
  Created  date: 03/08/2022
  Last modified: 03/08/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/

import SwiftUI



struct CreateView: View {
    @State var name: String = ""
    @State var language: String = ""
    @State var year: String = ""
    @State var ep: String = ""
    @State var content: String = ""
    var body: some View {
        ZStack {
            Image("create-background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            VStack(alignment: .center){
                Group {
                    Text("Movie Name:")
                        .font(.callout)
                        .bold()
                    TextField("Enter movie name:", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Language:")
                        .font(.callout)
                        .bold()
                    TextField("Enter language:", text: $language)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
              
                    Text("Year of Release:")
                        .font(.callout)
                        .bold()
                    TextField("Enter year of release:", text: $year)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    Text("Number of Episodes:")
                        .font(.callout)
                        .bold()
                    TextField("Enter number of episodes:", text: $ep)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Content:")
                        .font(.callout)
                        .bold()
                    TextField("Enter content:", text: $content)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                CreateButton()
            
            } .aspectRatio(contentMode: .fit)
                .frame(width: 380)

        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
