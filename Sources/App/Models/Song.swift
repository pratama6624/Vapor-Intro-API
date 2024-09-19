//
//  Song.swift
//  Vapor-API
//
//  Created by Pratama One on 18/09/24.
//

import Fluent
import Vapor

final class Song: @unchecked Sendable, Model, Content {
    static let schema = "songs"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    init() { }
    
    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }
}
