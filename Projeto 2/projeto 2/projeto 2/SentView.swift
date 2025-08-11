//
//  SentView.swift
//  projeto 2
//
//  Created by Turma02-2 on 30/05/25.
//

import SwiftUI

struct SentView: View {
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.top)
          
            Image(systemName: "paintpalette")
                .edgesIgnoringSafeArea(.top)
                .font(.system(size: 100))
                .foregroundColor(.white)
                .padding()
           }
    }
}

#Preview {
    SentView()
}
