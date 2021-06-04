//
//  TestModel.swift
//  LearningApp
//
//  Created by A P on 2021-06-04.
//

import Foundation

struct Test: Decodable, Identifiable {
    var id: Int
    var image: String
    var time: String
    var description: String
    var questions: [Question]
}
