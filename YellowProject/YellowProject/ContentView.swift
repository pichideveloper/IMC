//
//  ContentView.swift
//  YellowProject
//
//  Created by Joaquin Diaz on 3/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                NavigationLink(destination: IMCView() ) {
                    Text("IMC CALCULATOR")
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
