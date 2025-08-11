//
//  ContentView.swift
//  projeto 2
//
//  Created by Turma02-2 on 30/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SwiftUIView()
                .badge(2)
                .tabItem{
                    Label("Rosa", systemImage: "paintbrush")
                }
            SentView()
                .tabItem{
                    Label("Cinza", systemImage: "paintpalette")
                }
            AccountView()
                .badge("!")
                    .tabItem{
                        Label("Azul", systemImage: "paintbrush.pointed.fill")
                    }
            ListView()
                .badge("!")
                    .tabItem{
                        Label("black", systemImage:  "list.bullet.rectangle")
                    }
        }
        }
}

#Preview {
    ContentView()
}
