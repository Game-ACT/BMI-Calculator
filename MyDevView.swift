//
//  MyDevView.swift
//  BMI Calculator
//
//  Created by Thapat Auechaikasem on 23/1/67.
//

// if you gonna copy my code put credit or smth.
// also use "Thapat "Game" Auechaikasem"
// no credit = you're cringe
// and also anything else = you're cringe x100
// and both is just two of them combined

import SwiftUI

struct MyDevView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("pf")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .overlay(Circle().stroke(Color.white,lineWidth: 10))
                    .clipShape(Circle())
                    .shadow(radius: 20)
                    .padding(.bottom, 30)
                Text("Thapat Auechaikasem")
                    .font(.system(.title,design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .frame(maxWidth: 310, maxHeight: 50)
                    .background(.green)
                    .cornerRadius(10)
                    .padding(.bottom, 5)
                // I changed some stuff here. Just ignore it. Refer to commits
                Text("Assumption College Thonburi")
                    .font(.system(.headline, design: .rounded))
                    .frame(maxWidth: 250)
                    .background(.black)
                    .cornerRadius(5)
                    .foregroundColor(.white)
                // THIS PART IS TOO HARD TO COPY. DONT DO IT. IT JUST GONNA BREAK IT. IT IS A ADVANCED COMMAND JUST USE TEXT OR SMTH.
                // just use google translate lul
                Link("Game11454@proton.me", destination: URL(string: "mailto:Game11454@proton.me" )!)
                    .font(.system(.headline,design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.top, 10)
            }
            .navigationTitle("About Me")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}
