//
//  ErrorAlertView.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/5/23.
//

import SwiftUI

struct ErrorAlertView: View {
    
    var message: String
    @Binding var hasErrorPresent: Bool
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                VStack {
                    Image(systemName: ImageName.exclamationmark_circle_fille)
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    Text(message)
                        .font(ThemeStyle.FontSize.medFont30)
                        .foregroundColor(Color(ThemeStyle.Colors.theme1Color))
                        .multilineTextAlignment(.center)
                }
                Spacer()
                Button {
                    hasErrorPresent = false
                } label: {
                    Text(Constants.tryAgain)
                        .frame(width: 150)
                        .padding()
                        .background(Color(ThemeStyle.Colors.theme1Color))
                        .foregroundColor(Color(ThemeStyle.Colors.whiteColor))
                        .cornerRadius(ThemeStyle.CornerRadius.radius16)
                }
            }
        }
    }
}

struct ErrorAlertView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorAlertView(message: "Data not Found", hasErrorPresent: .constant(false))
    }
}
