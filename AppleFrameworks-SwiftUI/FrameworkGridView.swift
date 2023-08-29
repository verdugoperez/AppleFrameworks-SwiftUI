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
            HStack {
                VStack {
                    Image("app-clip")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    Text("App Clips")
                        .font(.system(size: 24))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                }
                VStack {
                    Image("app-clip")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    Text("App Clips")
                        .font(.system(size: 24))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                }
                VStack {
                    Image("app-clip")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    Text("App Clips")
                        .font(.system(size: 24))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                }

            }
            Spacer()
             
        }
    
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
