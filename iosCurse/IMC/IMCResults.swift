//
//  IMCResults.swift
//  iosCurse
//
//  Created by Joaquin Diaz on 3/09/24.
//

import SwiftUI

struct IMCResults: View {
var userweight: Double
var userHeight: Double
    var body: some View {
        VStack{
            Text("Tu resultado es").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundColor(.white)
            let result = calculateimc(weight: userweight, height: userHeight)
            informationview(result: result)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.black)
    }
}
func calculateimc(weight: Double, height: Double) -> Double {
    let result = weight/((height/100)*(height/100))
    return result
}



struct informationview:  View {
    var result: Double
    var body: some View {
        let information = getIMCresult(result: result)
        VStack{
            Spacer()
            Text(information.0).foregroundColor(information.2)
                .font(.system(size: 45))
                .bold()
                .padding(.horizontal, 30)
            Spacer()
            Text("\(result, specifier: "%.2f")")
                .font(.system(size: 80))
                .bold()
                .foregroundColor(.white)
                .padding(.horizontal, 30)
            Spacer()
            Text(information.1).padding(.horizontal, 30)
                .font(.title2)
                .bold()
                .foregroundColor(.black)
                
            Spacer()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.backgroundcomponent)
            .cornerRadius(32).padding()
    }
}

func getIMCresult (result : Double) -> (String,String, Color){
    let title: String
    let description: String
    let color: Color
    switch result {
    case 0.00...19.99:
        title = "Peso bajo"
        description = "Estas por debajo del peso recomendado segun el IMC."
        color = Color.yellow
    case 20...24.99:
        title = "Peso Normal"
        description = "Estas en el peso recomendando por el IMC."
        color = Color.green
    case 25...29.99:
        title = "SobrePeso"
        description = "Estas por encima del peso recomendado segun el IMC."
        color = Color.orange
    case 30...229.99:
        title = "Obesidad"
        description = "Estas muy encima del peso recomendado segun el IMC."
        color = Color.red
    default:
        title = "  error  "
        description = "Ha ocurrido un error inesperado"
        color = Color.black
        
        
    }
    return (title, description, color)
}
#Preview {
    IMCResults(userweight: 80, userHeight: 190)
}
