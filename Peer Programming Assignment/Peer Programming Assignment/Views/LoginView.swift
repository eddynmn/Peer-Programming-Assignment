//
//  LoginView.swift
//  Peer Programming Assignment
//
//  Created by Eddy Wang on 1/30/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "things to do",
                           background: Color(red: 0.8039, green: 0.7059, blue: 0.8588))
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.blue)
                    }
                    
                    TextField("email", text: $viewModel.email)
                        .font(.custom("AmericanTypewriter", size: 12))
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("password", text: $viewModel.password)
                        .font(.custom("AmericanTypewriter", size: 12))
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "log in",
                             background: .red) {
                        viewModel.login()
                    }
                }
                
                // Create Account
                VStack {
                    Text("new here?")
                        .font(.custom("AmericanTypewriter", size: 15))
                    NavigationLink("create an account", destination: RegisterView())
                        .font(.custom("AmericanTypewriter", size: 15))
                }
                .padding(.top, 10)
                .padding(.bottom, 10)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
