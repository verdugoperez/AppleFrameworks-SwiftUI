//
//  ContentView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Administrador on 28/08/23.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("AppleFrameworks-SwiftUI")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
