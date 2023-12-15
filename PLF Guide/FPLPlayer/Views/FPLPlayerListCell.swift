//
//  FPLPlayerListCell.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/14/23.
//

import SwiftUI

struct FPLPlayerListCell: View {
    
    var imageUrl: String
    var name: String
    var teamName: String
    var totalTransferredIn: Int
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: imageUrl)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .clipShape(.circle)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("\(teamName) - MID")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                Text("Sun 3:05PM @ Manchester City (A)")
                    .font(.headline)
                    .fontWeight(.medium)
                Text("Total Transfer In: 1000")
                    .font(.headline)
                    .fontWeight(.medium)
            }
        }
        .padding(.vertical, 10)
        
    }
}

struct FPLPlayerListCell_Previews: PreviewProvider {
    static var previews: some View {
        FPLPlayerListCell(imageUrl: ImageName.exclamationmark_circle_fille, name: "Gabriel Martinelli", teamName: "Arsenal", totalTransferredIn: 100000)
    }
}
