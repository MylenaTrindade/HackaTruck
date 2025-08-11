//
//  Charview.swift
//  projeto 4
//
//  Created by Turma02-2 on 04/06/25.
//

import SwiftUI

struct Charview: View {
    
    @State var recebe : Disney?
    
    var body: some View {
        ZStack{
            Color.color
                .ignoresSafeArea()
            VStack(spacing:20){
                Image(recebe!.imageUrl)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(12)
//                Text(recebe!.name)
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    Charview()
}
