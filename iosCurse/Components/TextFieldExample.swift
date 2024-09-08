//
//  TextFieldExample.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 2/09/24.
//

import SwiftUI

struct TextFieldExample: View {
    @State var email : String = ""
    @State var password : String = ""
    var body: some View {
        VStack {
            TextField("escribe tu email", text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("el antiguo valor era \(oldValue) y el nuevo es \(newValue)")
            }
                SecureField("escribe tu contraseña", text: $password)
                    .keyboardType(.emailAddress)
                    .padding(16)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(16)
                    .padding(.horizontal, 32)
                    .onChange(of: password) { oldValue, newValue in
                        print("el antiguo valor era \(oldValue) y el nuevo es \(newValue)")
                }
            
        }
        
    }
}

#Preview {
    TextFieldExample()
}
