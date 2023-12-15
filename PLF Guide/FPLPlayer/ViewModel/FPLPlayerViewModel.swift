//
//  FPLPlayerViewModel.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/5/23.
//

import Foundation

final class FPLPlayerViewModel: ObservableObject {
    
    private let fplPlayerViewService: FPLPlayerServiceDelegate
    init(fplPlayerViewService: FPLPlayerServiceDelegate = FPLPlayerViewService()) {
        self.fplPlayerViewService = fplPlayerViewService
    }
    
    @Published var fplPlayers: [FPLPlayer] = []
    
    @Published var isLoading = false
    @Published var hasErrorPresent = false
    var errorMessage: String = ""
    
    func getFPLGeneralData() {
        isLoading = true
        fplPlayerViewService.getFPLPlayers { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success(let data):
                self.isLoading = false
                self.fplPlayers = data.elements.filter({ $0.assists ?? 0 > 5 })
            case .failure(let error):
                self.hasErrorPresent = true
                self.errorMessage = error.message
            }
        }
    }
    
    func getAllRanks() -> [FPLRank] {
        var ranks = [FPLRank]()
        FPLRankOption.allCases.forEach { rankOption in
            ranks.append(FPLRank(rankOption: rankOption))
        }
        return ranks
    }
}
