//
//  ProfileView.swift
//  Peer Programming Assignment
//
//  Created by Eddy Wang on 1/30/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        if let user = viewModel.user {
            // Avatar
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.blue)
                .frame(width: 125, height: 125)
                .padding()
            
            // Info: Name, Email, Member since
            VStack(alignment: .leading) {
                HStack {
                    Text("Name: ")
                        .bold()
                        .font(.custom("AmericanTypewriter", size: 20))
                    Text(user.name)
                        .font(.custom("AmericanTypewriter", size: 20))
                }
                .padding()
                HStack {
                    Text("Email: ")
                        .bold()
                        .font(.custom("AmericanTypewriter", size: 20))
                    Text(user.email)
                        .font(.custom("AmericanTypewriter", size: 20))
                }
                .padding()
                
                HStack {
                    Text("Member Since: ")
                        .bold()
                        .font(.custom("AmericanTypewriter", size: 20))
                    Text("\(Date(timeIntervalSince1970: user.joined).formatted(date:.abbreviated, time: .shortened))")
                        .font(.custom("AmericanTypewriter", size: 20))
                }
                .padding()
            }
            .padding()
            
            // Sign out
            Button {
                viewModel.logOut()
            } label: {
                Text("log out")
                    .font(.custom("AmericanTypewriter", size: 18))
            }
            .tint(.red)
            .padding()
            
            Spacer()
        }
    }
}
        

#Preview {
    ProfileView()
}
