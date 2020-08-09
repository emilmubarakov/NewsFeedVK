//
//  FeedResponse.swift
//  NewVkNews
//
//  Created by Emil Mubarakov on 09/08/2020.
//  Copyright © 2020 Emil Mubarakov. All rights reserved.
//

import Foundation

struct FeedResponseWrapped: Decodable {
    let response: FeedResponse
}

struct FeedResponse: Decodable {
    var items: [FeedItems]
    
}

struct FeedItems: Decodable {
    let sourceId: Int
    let postId: Int
    let text: String?
    let date: Double
    let comments: CountableItems?
    let likes: CountableItems?
    let reposts: CountableItems?
    let views: CountableItems?

}

struct CountableItems: Decodable {
    let count: Int
}
