//
//  PaintView.swift
//  projeto 2
//
//  Created by Turma02-2 on 06/06/25.
//

import SwiftUI

struct PaintView: View {
    @State var paint: String = " "
    var body: some View {
        VStack {
            Image(systemName: "paintbrush.fill")
            .font(.system(size: 100))
            .foregroundColor(.blue
            )
            .padding()
        }
    }
}


#Preview {
PaintView()
}
