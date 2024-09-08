//
//  ContentView.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 2/09/24.
//

import SwiftUI

struct ejemplo1: View {
    var body: some View {
        
        VStack {
            HStack{
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Rectangle()
                .foregroundColor(.orange)
                .frame(height: 100)
            HStack{
                Circle()
                    .foregroundColor(.green)
                Rectangle().foregroundColor(.black)
                Circle().foregroundColor(.indigo)
            } .frame(height: 250)
            Rectangle().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.orange)
            HStack{
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
        }.background(.red)
        
    }
}

#Preview {
    ejemplo1()
}
