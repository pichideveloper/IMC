//
//  imageExample.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 2/09/24.
//

import SwiftUI

struct imageExample: View {
    var body: some View {
        Image("apol")
            .resizable()
            .scaledToFill()
            .frame(height: 200)
            .frame(width: 200)
        
        Image(systemName: "figure.walk")
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150)
    }
}

#Preview {
    imageExample()
}
