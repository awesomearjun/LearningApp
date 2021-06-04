//
//  ContentModel.swift
//  LearningApp
//
//  Created by A P on 2021-05-30.
//

import Foundation

class ContentModel: ObservableObject {
    @Published var modules = [Module]()
    var styleData: Data?
    
    init() {
        getLocalData()
    }
    
    func getLocalData() {
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            let jsonData = try Data(contentsOf: jsonUrl!)
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            self.modules = modules
        } catch {
            print("Error in docatch block at line 14: \(error)")
        }
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
        } catch {
            print("Couldn‘t parse style data: \(error)")
        }
    }
}
