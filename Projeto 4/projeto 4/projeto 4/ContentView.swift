//
//  ContentView.swift
//  projeto 4
//
//  Created by Turma02-2 on 04/06/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModule()
//    var nome: String = ""
//    var imagem: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.color
//                    .ignoresSafeArea()
                
                VStack(spacing: 20){
                    
                    Image("imagem1")
                    Text(viewModel.personagens.imageUrl)
//                        .resizable()
//                        .frame(width: 450, height: 250)
                    Spacer()
//                    ScrollView(.horizontal) {
                        VStack(spacing: 20) {
                          //  ForEach(viewModel.personagens, id: \.self) { personagens in
//                                NavigationLink(destination: Charview()){
                                    HStack {
//                                        AsyncImage(url: URL(string: "\($viewModel.personagen.imageUrl)")) { image in
//                                            image.resizable()
//                                                .frame(width: 70, height: 80)
//                                                .clipShape(Circle())
//                                        } placeholder: {
//                                            ProgressView()
//                                        }
                                            Text(viewModel.personagens.imageUrl)
//                                                .foregroundColor(.white)
//                                                .font(.subheadline)
                                        
                                        
                                        Spacer()
                                    }
//                                    .padding(.horizontal)
//                                }
                          //  }
                        }
//                        .padding()
//                    }
                }
            }
        }.onAppear(){
            viewModel.fetch()
        }
    }
   
}

#Preview {
    ContentView()
}
