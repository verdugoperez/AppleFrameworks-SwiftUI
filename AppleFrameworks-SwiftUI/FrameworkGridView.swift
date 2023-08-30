//
//  ContentView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Administrador on 28/08/23.
//

import SwiftUI

struct FrameworkGridView: View {
    @State private var isPresentingSheet = false

    var body: some View {
        
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        Button {
                            isPresentingSheet.toggle()
                        } label: {
                            FrameworkTitleView(name: framework.name, imageName: framework.imageName).sheet(isPresented: $isPresentingSheet) {
                                DetailView(imageName: framework.imageName, name: framework.name, description: framework.description)
                            }
                        }.buttonStyle(.plain)

                    }
                }
            }.navigationTitle("🍎 Frameworks")
        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
