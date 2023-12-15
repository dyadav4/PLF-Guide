//
//  FPLPlayerViewService.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/5/23.
//

protocol FPLPlayerServiceDelegate {
    func getFPLPlayers(completion: @escaping(Result<FPLPlayers, APIError>) -> Void)
}

final class FPLPlayerViewService: FPLPlayerServiceDelegate {
    func getFPLPlayers(completion: @escaping(Result<FPLPlayers, APIError>) -> Void) {
        RestApiClient.getFPLPlayers(completion: completion)
    }
}
