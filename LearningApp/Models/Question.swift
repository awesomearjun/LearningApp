//
//  Question.swift
//  LearningApp
//
//  Created by A P on 2021-06-04.
//

import Foundation

struct Question: Decodable, Identifiable {
    var id: Int
    var content: String
    var correctIndex: Int
    var answers: [String]
}
