//
//  DetailView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Administrador on 29/08/23.
//

import SwiftUI

struct DetailView: View {
    let imageName: String
    let name: String
    let description: String
    
    var body: some View {
        VStack {
            FrameworkTitleView(name: name, imageName: imageName).padding(.bottom, 16)
            Text(description).multilineTextAlignment(.leading)
        }.padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(imageName: "app-clip", name: "App Clip", description: "lorem ipsum")
    }
}
