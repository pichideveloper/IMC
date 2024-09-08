//
//  buscadorDeSuperheroes.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 8/09/24.
//

import SwiftUI

struct buscadorDeSuperheroes: View {
    @State var superheroName : String = ""
    @State var wrapper: ApiNetwork.Wrapper? = nil
    var body: some View {
        VStack{
            
            
            
            TextField("", text: $superheroName, prompt: Text("batman").bold().font(.title2).foregroundColor(.gray).foregroundColor(.gray))
                .bold()
                .font(.title2)
                .foregroundColor(.white)
                .padding(16)
                .border(.black, width: 1.5)
                .padding(8)
                .autocorrectionDisabled()
                .onSubmit {
                    print(superheroName)
                    Task{
                        do{
                            wrapper = try await ApiNetwork().getHeroesbyQuery(query: superheroName)
                        }
                        catch{
                            print("error")
                        }
                    }
                }
            List(wrapper?.results ?? [] ){ superhero in
                superheroItem(superhero: superhero)
                
            }.listStyle(.plain)
            Spacer()
            
            
            
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.superbackground)
    }
}
struct superheroItem: View {
    let superhero : ApiNetwork.Superhero
    var body: some View {
        ZStack{
            Rectangle()
            VStack{
                Spacer()
                Text(superhero.name)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.gray.opacity(0.5))
            }
            Spacer()
        }.frame(height: 200)
         .cornerRadius(32)
         .listRowBackground(Color.superbackground)
        
    }
}
    

#Preview {
    superheroItem(superhero: ApiNetwork.Superhero(id:"",name:"text"))
}
