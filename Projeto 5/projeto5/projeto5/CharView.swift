//
//  CharView.swift
//  projeto5
//
//  Created by Turma02-2 on 05/06/25.
//

import SwiftUI

struct Charview: View {
    
    @State var recebe : Personagens?
    
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()
            VStack(spacing:20){
                Text(recebe!.caracteristica)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                AsyncImage(url: URL(string: recebe!.imageUrl)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 100, height: 100)
            }
        }
    }
}

