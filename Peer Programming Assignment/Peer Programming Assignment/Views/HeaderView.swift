//
//  HeaderView.swift
//  Peer Programming Assignment
//
//  Created by Eddy Wang on 1/30/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
            Text(title)
                .font(.custom("AmericanTypewriter", size: 25))
                .foregroundColor(Color.white)
                .bold()
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
    }
}

#Preview {
    HeaderView(title: "Title", background: .blue)
}
