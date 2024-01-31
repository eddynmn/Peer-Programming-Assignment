//
//  RegisterView.swift
//  Peer Programming Assignment
//
//  Created by Eddy Wang on 1/30/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "register here",
                       background: Color(red: 1.0, green: 0.7843, blue: 0.8667))
            
            Form {
                TextField("full name", text: $viewModel.name)
                    .font(.custom("AmericanTypewriter", size: 12))
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                TextField("email address", text: $viewModel.email)
                    .font(.custom("AmericanTypewriter", size: 12))
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("password", text: $viewModel.password)
                    .font(.custom("AmericanTypewriter", size: 12))
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "create account",
                         background: .green
                ) {
                    viewModel.register()
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
