//
//  MenueView.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 2/09/24.
//

import SwiftUI

struct MenueView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink(destination: IMCView() ) {
                    Text("IMC CALCULATOR")
                }
                NavigationLink(destination: buscadorDeSuperheroes() ){
                    Text("SuperHeroe Finder")
                }
            }
        }
    }
}

#Preview {
    MenueView()
}
