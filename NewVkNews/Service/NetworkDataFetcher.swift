//
//  NetworkDataFetcher.swift
//  NewVkNews
//
//  Created by Emil Mubarakov on 09/08/2020.
//  Copyright © 2020 Emil Mubarakov. All rights reserved.
//

import Foundation

protocol DataFetcher {
    func getFeed(response: @escaping (FeedResponse?) -> Void)
}

struct NetworkDataFetcher: DataFetcher {
    
    let networking: Networking
    
    init(networking: Networking) {
        self.networking = networking
    }
    
    func getFeed(response: @escaping (FeedResponse?) -> Void) {
        let params = ["filters": "post, photo"]
        networking.requst(path: API.newsFeed, params: params) { (data, error) in
            if let error = error {
                print("Error \(error.localizedDescription)")
                response(nil)
            }
            let decoded = self.decodeJSON(type: FeedResponseWrapped.self, from: data)
            response(decoded?.response)
        }
    }
    
    private func decodeJSON<T: Decodable>(type: T.Type, from: Data?) -> T? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        guard let data = from, let response = try? decoder.decode(type.self, from: data) else {return nil}
        return response
    }
    
}
