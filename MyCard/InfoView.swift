//
//  InfoView.swift
//  MyCard
//
//  Created by  Maksim Stogniy on 13.04.2024.
//

import SwiftUI


struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0.15, green: 0.24, blue: 0.46))
                Text(text)
            })
            .padding(.all)
    }
}

#Preview {
    InfoView(text: "Hello", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
}
