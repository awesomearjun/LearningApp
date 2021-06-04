//
//  Models.swift
//  LearningApp
//
//  Created by A P on 2021-06-04.
//

import Foundation

struct Module: Decodable, Identifiable {
    var id: Int
    var category: String
    var content: Content
    
}
