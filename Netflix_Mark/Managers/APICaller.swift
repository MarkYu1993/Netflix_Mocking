//
//  APICaller.swift
//  Netflix_Mark
//
//  Created by EMCT on 2022/2/23.
//

import Foundation

struct Constants {
    //from TMDB Website
    static let API_KEY = "e7ca57eed4b0ad3379538fd7e0b4d724"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedToGetData
}

class APICaller {
    static let shared = APICaller()
    
    
    func getTrendingMovies(completion: @escaping (Result<[TrendingMoviesResponse.Movie], Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else { return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { return }
            
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))
            }
            catch {
                completion(.failure(error))
            }
            
        }
        task.resume()
    }
}
