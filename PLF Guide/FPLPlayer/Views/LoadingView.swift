//
//  LoadingView.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/5/23.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = ThemeStyle.Colors.theme1Color
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
   func updateUIView( _ uiView: UIActivityIndicatorView, context: Context) {}
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(ThemeStyle.Colors.systemBackgound)
            ActivityIndicator()
        }
    }
}
