//
//  RestApiClient.swift
//  PLF Guide
//
//  Created by Dharamvir Yadav on 12/5/23.
//

import Alamofire

final class RestApiClient {
    static func request<T: Codable>(route: APIRouter, completion: @escaping(Result<T, APIError>) -> Void) {
        AF.request(route).response { response in
            DispatchQueue.main.async {
                let result = response.result
                switch result {
                case .success(let data):
                    guard let data = data else {
                        completion(.failure(.invalidData))
                        return
                    }
                    
                    print(data)
                    
                    guard let obj = try? JSONDecoder().decode(T.self, from: data) else {
                        completion(.failure(.invalidResponse))
                        return
                    }
                    
                    completion(.success(obj))
                    
                case .failure:
                    completion(.failure(.invalidRequest))
                }
            }
        }
    }
    
    static func getFPLPlayers(completion: @escaping(Result<FPLPlayers, APIError>) -> Void) {
        return request(route: .players, completion: completion)
    }
}
