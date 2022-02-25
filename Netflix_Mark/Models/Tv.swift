//
//  Tv.swift
//  Netflix_Mark
//
//  Created by EMCT on 2022/2/25.
//

import Foundation

struct TrendingTvResponse: Codable {
    let results: [Tv]
    
    
    struct Tv: Codable {
        let id: Int
        let media_type: String?
        let original_name: String?
        let original_title: String?
        let poster_path: String?
        let overview: String?
        let vote_count: Int
        let release_date: String?
        let vote_average: Double
    }
}
