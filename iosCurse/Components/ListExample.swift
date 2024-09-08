//
//  ListExample.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 8/09/24.
//

import SwiftUI

var pokemons = [
    Pokemon (name: "DRAGONITE"),
    Pokemon (name: "SNORLAX"),
    Pokemon (name: "PIKACHU"),
    Pokemon (name: "APOLO"),
    
]
var digimons = [
    Digimon(name: "Agumon"),
    Digimon(name: "graymon"),
    Digimon(name: "supermon"),
    Digimon(name: "eletromon"),
]


struct ListExample: View {
    var body: some View {
        // List{
        //   Text("hola")
        //     Text("hola")
        //       Text("hola")
        //    Text("hola")
        //       Text("hola")
        // }
        
        
        //        List{
        //            ForEach(pokemons, id: \.name){ pokemon in
        //                Text(pokemon.name)
        //
        //            }
        //        }
        //
        //        List(digimons){ digimon in
        //            Text(digimon.name)
        //        }
        
        List{
            Section(header: Text("pokemons")) {
                ForEach(pokemons, id: \.name){
                    pokemon in Text(pokemon.name)
                }
            }
            Section(header: Text("digimons")) {
                ForEach(digimons){
                    digimon in Text(digimon.name)
                }
            }
        }.listStyle(.inset)
        
        
        
    }
}
struct Pokemon {
    let name : String
}
struct Digimon : Identifiable{
    var id = UUID()
    let name : String
}

#Preview {
    ListExample()
}
