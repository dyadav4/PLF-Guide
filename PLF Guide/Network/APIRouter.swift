//
//  APIRouter.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/5/23.
//

import Alamofire

public enum APIRouter: URLRequestConvertible {
    
    case players
    
    private var urlPath: String {
        switch self {
        case .players:
            return "https://fantasy.premierleague.com/api/bootstrap-static/"
        }
    }
    
    public func asURLRequest() throws -> URLRequest {
        let url = try urlPath.asURL()
        let urlRequest = URLRequest(url: url)
        return urlRequest
    }
}
