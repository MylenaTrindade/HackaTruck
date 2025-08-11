//
//  musica.swift
//  projeto3
//
//  Created by Turma02-2 on 02/06/25.
//

import SwiftUI

struct musicaView: View {

    var musica: Song
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Image(musica.capa)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(12)
                
                Text(musica.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(musica.nomeartista)
                        .foregroundColor(.white)
                        .font(.subheadline)
                
                HStack(spacing: 20){
                    Image(systemName: "shuffle")
                        .foregroundColor(.white)
                    Image(systemName: "backward.end.fill")
                        .foregroundColor(.white)
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                    Image(systemName: "forward.end.fill")
                        .foregroundColor(.white)
                    Image(systemName: "repeat")
                        .foregroundColor(.white)

                }
               
            }
        }
    }
}

#Preview {
    musicaView(musica: Song(id: 1, name: "Last Friday Night", nomeartista: "Katy Perry", capa: "katy"))
}
