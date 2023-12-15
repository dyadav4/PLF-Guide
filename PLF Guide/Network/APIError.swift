//
//  APIError.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/5/23.
//

enum APIError: Error {
    case invalidRequest
    case invalidResponse
    case invalidData
    
    var message: String {
        switch self {
        case .invalidRequest:
            return "There was an issue with the request"
        case .invalidResponse:
            return "There was an issue with the response"
        case .invalidData:
            return "There was an issue with the data"
        }
    }
}
