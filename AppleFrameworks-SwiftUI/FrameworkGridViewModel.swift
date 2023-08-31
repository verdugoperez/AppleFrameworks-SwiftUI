//
//  FrameworkGridViewModel.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Administrador on 30/08/23.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
