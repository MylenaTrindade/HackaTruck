//
//  AccountView.swift
//  projeto 2
//
//  Created by Turma02-2 on 30/05/25.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.top)
          
            Image(systemName: "paintbrush.pointed")
                .edgesIgnoringSafeArea(.top)
                .font(.system(size: 100))
                .foregroundColor(.white)
                .padding()
           }
    }
}

#Preview {
    AccountView()
}
