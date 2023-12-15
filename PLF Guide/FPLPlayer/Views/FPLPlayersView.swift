//
//  FPLPlayersView.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/5/23.
//

import SwiftUI

struct FPLPlayersView: View {
    
    @StateObject private var viewModel = FPLPlayerViewModel()
    
    var body: some View {
        ZStack {
            if !(viewModel.isLoading || viewModel.hasErrorPresent) {
                NavigationView {
                    VStack {
                        FPLMostTransferredInView(allRanks: viewModel.getAllRanks())
                        
                        HStack {
                            Text("Most Transferred In Players")
                                .foregroundColor(Color(ThemeStyle.Colors.theme1Color))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(Color(ThemeStyle.Colors.systemBackgound))
                                
                        }
                        
                        List(viewModel.fplPlayers, id: \.id) { player in
                            FPLPlayerListCell(imageUrl: ImageName.exclamationmark_circle_fille, name: player.playerName, teamName: "Arsenal", totalTransferredIn: 1000)
                        }
                        .listStyle(.plain)
                        
                        Spacer()
                    }
                    .navigationTitle("FPL Guide")
                    .background(ThemeStyle.Colors.labelLightColor)
                }
                
            } else {
                LoadingView()
            }
        }
        .onAppear {
            
            viewModel.getFPLGeneralData()
        }
        .fullScreenCover(isPresented: $viewModel.hasErrorPresent, onDismiss: {
            viewModel.getFPLGeneralData()
        }) {
            ErrorAlertView(message: viewModel.errorMessage, hasErrorPresent: $viewModel.hasErrorPresent)
        }
    }
}

struct IPAddressView_Previews: PreviewProvider {
    static var previews: some View {
        FPLPlayersView()
    }
}
