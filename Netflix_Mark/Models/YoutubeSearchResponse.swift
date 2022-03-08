//
//  YoutubeSearchResponse.swift
//  Netflix_Mark
//
//  Created by EMCT on 2022/3/8.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
