//
//  ContentView.swift
//  projeto5
//
//  Created by Turma02-2 on 05/06/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModule()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                
                VStack(spacing: 30) {
                    Image("branca")
                        .resizable()
                        .ignoresSafeArea()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 3000, height: 285)
                    
                    ScrollView {
                        VStack(spacing: 30) {
                            
                            // Princesa
                            ForEach(viewModel.personagens2, id: \.self) { personagem in
                                if personagem.titulo == "Princesa" {
                                    NavigationLink(destination: Charview(recebe: personagem)) {
                                        Text(personagem.nome)
                                            .foregroundColor(.white)
                                            .font(.subheadline)
                                        AsyncImage(url: URL(string: personagem.imageUrl)) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 70, height: 70)
                                        .clipShape(Circle())
                                        
                                        
                                    }
                                }
                            }
                            
                            // Príncipe
                            ForEach(viewModel.personagens2, id: \.self) { personagem in
                                if personagem.titulo == "Príncipe" {
                                    NavigationLink(destination: Charview(recebe: personagem)) {
                                        Text(personagem.nome)
                                            .foregroundColor(.white)
                                            .font(.subheadline)
                                        AsyncImage(url: URL(string: personagem.imageUrl)) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 70, height: 70)
                                        .clipShape(Circle())
                                    }
                                }
                            }
                            
                            // Bruxa
                            ForEach(viewModel.personagens2, id: \.self) { personagem in
                                if personagem.titulo == "Bruxa" {
                                    NavigationLink(destination: Charview(recebe: personagem)) {
                                        Text(personagem.nome)
                                            .foregroundColor(.white)
                                            .font(.subheadline)
                                        AsyncImage(url: URL(string: personagem.imageUrl)) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 70, height: 70)
                                        .clipShape(Circle())
                                    }
                                }
                            }
                            
                            // Anões
                            ForEach(viewModel.personagens2, id: \.self) { personagem in
                                if personagem.titulo == "Anão" {
                                    NavigationLink(destination: Charview(recebe: personagem)) {
                                        Text(personagem.nome)
                                            .foregroundColor(.white)
                                            .font(.subheadline)
                                        AsyncImage(url: URL(string: personagem.imageUrl)) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 70, height: 70)
                                        .background(Color.white)
                                        .clipShape(Circle())

                                        
                                    }
                                    .padding(.horizontal)
                                }
                            }
                            
                        }
                        .padding()
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetch()
        }
    }
}


#Preview {
    ContentView()
}
