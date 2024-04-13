//
//  ContentView.swift
//  MyCard
//
//  Created by  Maksim Stogniy on 11.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.15, green: 0.24, blue: 0.46)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Maksim Stogniy")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("Front-end developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+1 234 567 8901", imageName: "phone.fill")
                InfoView(text: "foo@bar.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}

