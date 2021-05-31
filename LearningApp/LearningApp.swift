//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by A P on 2021-05-30.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
