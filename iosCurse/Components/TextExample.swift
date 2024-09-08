//
//  TextExample.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 2/09/24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
            
        VStack{
            Text("hola apolo").font(.headline)
            Text("hola apolito").font(.system(size: 25).italic().bold()).fontDesign(.monospaced).underline().foregroundStyle(.orange).background(.black)
        Text("dalmata dalmata dalmata dalamta")
                .frame(width: 75)
                .lineLimit(2)
                .lineSpacing(20)
        }
    }
}

#Preview {
    TextExample()
}
