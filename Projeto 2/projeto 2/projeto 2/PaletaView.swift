//
//  PaletaView.swift
//  projeto 2
//
//  Created by Turma02-2 on 06/06/25.
//

import SwiftUI

struct PaletaView: View {
    @State var paleta: String

    var body: some View {
        VStack {
            Image(systemName: "paintpalette.fill")
            .font(.system(size: 100))
            .foregroundColor(.pink)
            .padding()
        }
    }
}


#Preview {
PaletaView(paleta: "")
}
