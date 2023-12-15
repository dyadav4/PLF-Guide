//
//  FPLRankOptionView.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/14/23.
//

import SwiftUI

struct FPLRankOptionView: View {
    
    var rankText: String
    var isSelected: Bool
    
    var body: some View {
        Button {
            print(rankText)
        } label: {
            Text(rankText)
            
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 12)
        .foregroundColor(Color(ThemeStyle.Colors.whiteColor))
        .selectedBackground(isSelected: isSelected)
        .clipShape(.capsule)
    }
}

extension View {
    @ViewBuilder
    func selectedBackground(isSelected: Bool) -> some View {
        if isSelected {
            self.background(Color(ThemeStyle.Colors.theme1Color))
        } else {
            self.background(ThemeStyle.Colors.theme1LightColor)
        }
    }
}

struct FPLRankOptionView_Previews: PreviewProvider {
    static var previews: some View {
        FPLRankOptionView(rankText: "Midfielders", isSelected: false)
    }
}
