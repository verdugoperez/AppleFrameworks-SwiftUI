//
//  FrameworkTitleView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Administrador on 29/08/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            Text(name)
            // .title2 respects dynamic type
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .lineLimit(1)
        }.padding()
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(name: "App Clip", imageName: "app-clip")
    }
}
