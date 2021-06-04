//
//  LessonModel.swift
//  LearningApp
//
//  Created by A P on 2021-06-04.
//

import Foundation

struct Lesson: Decodable, Identifiable {
    var id: Int
    var title: String
    var video: String
    var duration: String
}
