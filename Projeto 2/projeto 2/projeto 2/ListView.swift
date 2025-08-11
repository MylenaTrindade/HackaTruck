//
//  ListView.swift
//  projeto 2
//
//  Created by Turma02-2 on 30/05/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                
                NavigationLink(destination: PaintView(paint: "paintbrush")) {
                    HStack {
                        Text("Item 1")
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                    .padding()
                    .frame(width: 120)
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(8)
                }

                NavigationLink(destination: PincelView(pincel: "paintbrush.pointed")) {
                    HStack {
                        Text("Item 2")
                            .foregroundStyle(Color.blue)
                        Spacer()
                        Image(systemName: "paintbrush.pointed")
                            .foregroundStyle(Color.blue)
                    }
                    .padding()
                    .frame(width: 120)
                    .background(Color.green.opacity(0.2))
                    .cornerRadius(8)
                }

                NavigationLink(destination: PaletaView(paleta: "paintpalette")) {
                    HStack {
                        Text("Item 3")
                        Spacer()
                        Image(systemName: "paintpalette")
                    }
                    .padding()
                    .frame(width: 120)
                    .background(Color.purple.opacity(0.2))
                    .cornerRadius(8)
                }
            }
            .padding()
            .navigationTitle("Lista de Itens")
        }
    }
}

#Preview {
    ListView()
}
