//
//  LabelExample.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 2/09/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("el es apolo", image: "apol")
        Label("suscribete", systemImage: "gamecontroller")
        Label(
            title: { Text("cama") },
            icon: { Image( "apol").resizable().scaledToFill().frame(width: 100, height: 100) }
        )
    }
}

#Preview {
    LabelExample()
}
