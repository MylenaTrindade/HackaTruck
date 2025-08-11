//
//  pincelView.swift
//  projeto 2
//
//  Created by Turma02-2 on 06/06/25.
//

import SwiftUI

struct PincelView: View {
    @State var pincel: String
    
    var body: some View {
        VStack {
            Image(systemName: "paintbrush.pointed.fill")
            .font(.system(size: 100))
            .foregroundColor(.green)
            .padding()
        }
    }
}

#Preview {
    PincelView(pincel: "")
}
