//
//  GreetingView.swift
//  ContactList
//
//  Created by Tom Huynh on 7/26/22.
//

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
