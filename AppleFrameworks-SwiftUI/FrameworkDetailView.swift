//
//  DetailView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Administrador on 29/08/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework?
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .frame(width: 44, height: 44, alignment: .center)
                    
                }.buttonStyle(.plain)
            }
            FrameworkTitleView(name: framework?.name ?? "", imageName: framework?.imageName ?? "").padding(.bottom, 16)
            ScrollView {
                Text(framework?.description ?? "").multilineTextAlignment(.leading)
            }
            Spacer()
            Link(destination: URL(string: framework?.urlString ?? "")!) {
                Text("Learn More")
                    .font(.title2)
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
        }.padding()
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let framework = Framework(name: "App clip", imageName: "app-clip", urlString: "", description: "lorem")
        FrameworkDetailView(framework: framework, isShowingDetailView: .constant(false))
    }
}

