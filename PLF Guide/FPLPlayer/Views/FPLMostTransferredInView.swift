//
//  FPLMostTransferredInView.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/14/23.
//

import SwiftUI

struct FPLMostTransferredInView: View {
    
    var allRanks: [FPLRank]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
//            Text("Most Transferred In Players")
//                .font(.title2)
//                .fontWeight(.bold)
//                .padding(.vertical)
//                .multilineTextAlignment(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(allRanks) { rank in
                        FPLRankOptionView(rankText: rank.rankOption.text, isSelected: rank.rankOption == .forward ? true : false)
                    }
                }
            }
            
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack {
//                    FPLPlayerRowView(imageUrl: ImageName.exclamationmark_circle_fille, name: "G. Martinelli", teamName: "Arsenal", totalTransferredIn: 100000)
//                    FPLPlayerRowView(imageUrl: ImageName.exclamationmark_circle_fille, name: "G. Martinelli", teamName: "Arsenal", totalTransferredIn: 100000)
//                    FPLPlayerRowView(imageUrl: ImageName.exclamationmark_circle_fille, name: "G. Martinelli", teamName: "Arsenal", totalTransferredIn: 100000)
//                    FPLPlayerRowView(imageUrl: ImageName.exclamationmark_circle_fille, name: "G. Martinelli", teamName: "Arsenal", totalTransferredIn: 100000)
//                    FPLPlayerRowView(imageUrl: ImageName.exclamationmark_circle_fille, name: "G. Martinelli", teamName: "Arsenal", totalTransferredIn: 100000)
//                }
//            }
        }
        .padding(.bottom, 6)
        .padding(.horizontal)
        .padding(.top)
        
    }
}

struct FPLMostTransferredInView_Previews: PreviewProvider {
    static var previews: some View {
        FPLMostTransferredInView(allRanks: [FPLRank(rankOption: .forward), FPLRank(rankOption: .midfielder)])
    }
}
