//
//  ContentView.swift
//  proj 1
//
//  Created by Turma02-22 on 11/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var valuekm: Double = 0.0
    @State private var valuehrs: Double = 0.0
    @State private var cor: Color = .gray
    @State private var botao: Bool = false
    @State private var valuekmH: Double = 0.0
    @State private var imagem1: String = "Image 1"
    

    var body: some View {
        ZStack{
            cor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                Text("Digite a distancia (km):")
                TextField("Digite a distância (km)", value: $valuekm, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(width:300 , height: 10 )
                
                Text("Digite o tempo (hrs):")
                TextField("Digite o tempo (hrs)", value: $valuehrs, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(width:300 , height: 10 )
                
                Button("Calcular"){
                    botao = true
                    
                    if valuehrs != 0 {
                        valuekmH = valuekm / valuehrs}
                    else {
                        valuekmH = 0}
                    if valuekmH < 10 {
                        imagem1 = "Image"
                        cor = .green
                    } else if valuekmH < 30 {
                        imagem1 = "Image 2"
                        cor = .blue
                    } else if valuekmH < 70 {
                        imagem1 = "Image 3"
                        cor = .orange
                    } else if valuekmH < 90 {
                        imagem1 = "Image 4"
                        cor = .yellow
                    } else {
                        imagem1 = "Image 5"
                        cor = .red
                    }

                }

                .padding()
                .background(Color.black)
                .foregroundColor(.orange)
                .cornerRadius(10)
                
           
                    Text(" \(String(format: "%.2f", valuekmH)) km/h")
                        .font(.largeTitle)
                        .padding()
                            
                
                Image(imagem1)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                
                
                
                Spacer()
                
            }.padding()
        }}
}

#Preview {
    ContentView()
}

