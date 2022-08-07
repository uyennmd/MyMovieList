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

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    var body: some View {
        ZStack{
            Image("create-background")
                .resizable()
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20){
                Spacer()
                VStack(spacing: 0) {
                    Text("Welcome")
                      .font(.system(size: 60))
                      .fontWeight(.heavy)
                      .foregroundColor(.blue)
                    Text("""
                    This is my List of Favourite Movie!
                    Enjoy your journey!
                    """)
                      .font(.title3)
                      .foregroundColor(.pink)
                      .multilineTextAlignment(.center)
                      .padding(.horizontal)
                }
                Spacer()
                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                        .fill(ColorConstant.pink.opacity(0.6))
                      .padding(8)
                      .frame(height:80)
                      .overlay(Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                                .foregroundColor(.blue.opacity(0.7)))
                })
            }
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
