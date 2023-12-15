//
//  FPLPlayers.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/5/23.
//

import Foundation

struct FPLPlayers: Codable {
    let elements: [FPLPlayer]
}

struct FPLPlayer: Codable {
    let id: Int
    var first_name: String = ""
    var second_name: String = ""
    var photo: String = ""
    let total_points: Int?
    let goals_scored: Int?
    let assists: Int?
    let clean_sheets: Int?
    let goals_conceded: Int?
    let penalties_saved: Int?
    let saves: Int?
    let bonus: Int?
    let penalties_order: Int?
    let event_points: Int?
    let yellow_cards: Int?
    let red_cards: Int?
    let chance_of_playing_next_round: Int?
    let ep_next: String?
    let form: String?
    let points_per_game: String?
    let selected_by_percent: String
    let status: String?
    let team: Int?
    let team_code: Int?
    let element_type: Int?
    let transfers_in: Int?
    
    var playerName: String {
        (first_name + " " + second_name).trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct FPLRank: Identifiable {
    let id = UUID()
    let rankOption: FPLRankOption
}

enum FPLRankOption: CaseIterable {
    case forward
    case midfielder
    case defender
    case goalkeepers
    
    var text: String {
        switch self {
        case .forward:
            return "Forwards"
        case .midfielder:
            return "Midfielders"
        case .defender:
            return "Defenders"
        case .goalkeepers:
            return "Goalkeepers"
        }
    }
}

