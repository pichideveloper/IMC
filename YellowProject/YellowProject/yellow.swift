//
//  yellow.swift
//  YellowProject
//
//  Created by Joaquin Diaz on 3/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var height : Double = 150
    @State var gender : Int = 0
    @State var age : Int = 18
    @State var weight : Int = 0
    var body: some View {
        VStack{
            HStack{
                togglebutton(text: "Men", imagename: "m.square.fill", gender: 0,selectedgeneder: $gender)
                togglebutton(text: "Women", imagename: "w.square.fill", gender: 1 ,selectedgeneder: $gender)

            }
            heightCalculator(seletectedHeigh: $height)
            
            HStack{
                counterbutton(text: "Edad", number: $age)
                counterbutton(text: "Peso", number: $weight)
            }
            
            
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundapp)
            
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("imc calculator").foregroundColor(.white).bold()
                }
            }
    }
}
struct togglebutton : View {
    let text:String
    let imagename: String
    let gender: Int
    @Binding var selectedgeneder: Int
    
    
    var body: some View {
        
        let coloralf = if (gender == selectedgeneder){
            Color.backgroundselected
        }else{
            Color.backgroundcomponent
        }
        
        Button (action: {
            selectedgeneder = gender
        } ) {
            VStack{
                Image(systemName: imagename)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(height: 100)
                InformationText(text:text)
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(coloralf)
        }

    }
}



struct InformationText : View {
    let text:String
    var body: some View {
        Text(text).font(.largeTitle).bold().foregroundColor(.white)
    }
}


struct TitleText: View {
    let text : String
    var body: some View {
        Text(text).font(.title2).bold().foregroundColor(.gray )
    }
}


//
struct heightCalculator : View {
    @Binding var seletectedHeigh: Double
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(seletectedHeigh))cm")
            Slider(value: $seletectedHeigh , in: 80 ... 240, step: 1).accentColor(.black).padding(.horizontal, 20)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundcomponent)
    }
}
//
struct counterbutton: View {
    let text: String
    @Binding var number : Int
    var body: some View {
        VStack{
            TitleText(text: text)
            InformationText(text: String(number))
            HStack{
                Button(action: {}) {
                    ZStack{
                        Circle()
                            .frame(width: 70, height: 70)
                    }
                }
            }
        }
        
    }
}
#Preview {
    ContentView()
}
