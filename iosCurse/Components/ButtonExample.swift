//
//  ButtonExample.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 2/09/24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("hola") {
            print("holiwi")
    }
        Button(action: {print("holiwi")}, label: {
            Text("apolito")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        })
    }
}
struct counter: View {
    @State var suscribersNumber = 0
    var body: some View {
        Button(action: { suscribersNumber += 1  }, label: {
            Text("suscribtores: \(suscribersNumber)")
                .bold()
                .font(.title)
                .frame(height: 50)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(10)
        })
    }
}

#Preview {
    counter()
}

