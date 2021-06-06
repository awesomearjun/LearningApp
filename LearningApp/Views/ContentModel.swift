//
//  ContentModel.swift
//  LearningApp
//
//  Created by A P on 2021-05-30.
//

import Foundation

class ContentModel: ObservableObject {
    @Published var modules = [Module]()
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    var styleData: Data?
    
    init() {
        getLocalData()
    }
    
    // MARK: Data methods
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
    
    // MARK: Module navigation methods
    func beginModule(moduleId: Int) {
        // MARK: Find index for this module id
        for index in 0...modules.count-1 {
            if modules[index].id == moduleId {
                // MARK: Found matching module
                currentModuleIndex = index
                break
            }
        }
        
        // MARK: Set the current module
        currentModule = modules[currentModuleIndex]
    }
}
