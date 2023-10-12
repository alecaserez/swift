//
//  ContentView.swift
//  Hike
//
//  Created by Alejandro Caserez on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea() // establecer el color de fondo
            CardView()
        }
    }
}

#Preview {
    ContentView()
}
