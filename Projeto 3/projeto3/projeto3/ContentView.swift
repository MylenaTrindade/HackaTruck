//
//  ContentView.swift
//  projeto3
//
//  Created by Turma02-2 on 02/06/25.
//

import SwiftUI


struct Song: Identifiable {
    var id: Int
    var name: String
    var nomeartista: String
    var capa: String
}


struct ContentView: View {
    @State private var imagem1: String = "girls"
    @State private var imagem2: String = "Image"
    @State private var imagem3: String = "dois"
    @State private var imagem4: String = "um"
    @State private var imagem5: String = "manu"
    @State private var imagem6: String = "lari"
    @State private var imagem7: String = "änitta"
    
    
  
    
    var arrayMusicas = [
        Song(id: 1, name: "Last Friday Night", nomeartista: "Katy Perry", capa: "katy"),
        Song(id: 2, name: "Garoto Errado", nomeartista: "Manu Gavassi", capa: "manu"), Song(id: 3, name: "Fugir Agora", nomeartista: "Larissa Manoela", capa: "lari"),Song(id: 4, name: "Show das Poderosas", nomeartista: "Anitta", capa: "anitta")
    ]
    
    var arrayTops = [
        Song(id: 2, name: "Garoto Errado", nomeartista: "Manu Gavassi", capa: "um"),
        Song(id: 1, name: "Last Friday Night", nomeartista: "Katy Perry", capa: "dois")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Image(imagem1)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(12)
                    
                    Text("GIRLS")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    HStack(alignment: .center, spacing: 12) {
                        Image(imagem2)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        
                        Text("Mylena Mendonca")
                            .foregroundColor(.white)
                            .font(.subheadline)
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                    ScrollView {
                        VStack(alignment: .leading, spacing: 10) {
                            ForEach(arrayMusicas) { musica in
                                NavigationLink(destination: musicaView(musica: musica)) {
                                    HStack {
                                        Image(musica.capa)
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                            .cornerRadius(6)
                                        
                                        VStack(alignment: .leading) {
                                            Text(musica.name)
                                                .foregroundColor(.white)
                                                .font(.headline)
                                            
                                            Text(musica.nomeartista)
                                                .foregroundColor(.gray)
                                                .font(.subheadline)
                                        }
                                        
                                        Spacer()
                                    }}
                                    .padding(.vertical, 4)
                                }
                        }
                        .padding(.horizontal)
                    }
                    ScrollView(.horizontal){
                        HStack(spacing: 10) {
                           
                            ForEach(arrayTops) { musica in
                                HStack {
                                    Image(musica.capa)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(6)
                                    
                                    VStack(alignment: .leading) {
                                        Text(musica.name)
                                            .foregroundColor(.white)
                                            .font(.headline)
                                        
                                        Text(musica.nomeartista)
                                            .foregroundColor(.gray)
                                            .font(.subheadline)
                                    }
                                    
                                    Spacer()
                                }
                                .padding(.vertical, 4)
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
    
    
}


#Preview {
    ContentView()
}
