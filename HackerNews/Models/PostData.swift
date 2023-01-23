//
//  PostData.swift
//  HackerNews
//
//  Created by Marina Karpova on 23.01.2023.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
