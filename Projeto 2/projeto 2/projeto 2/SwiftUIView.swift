//
//  SwiftUIView.swift
//  projeto 2
//
//  Created by Turma02-2 on 30/05/25.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush")
                .edgesIgnoringSafeArea(.top)
                .font(.system(size: 100))
                .foregroundColor(.white)
                .padding()
           }
    }
}

#Preview {
    SwiftUIView()
}
