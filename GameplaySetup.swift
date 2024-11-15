//
//  GameplaySetup.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 14/11/R6.
//

import Foundation
import SwiftUI

struct Scenario: Identifiable{
    let image: String?
    let imageCoordinates: Array<Int>
    var imagePosition: Int
    var options: Array<String>
    var id: String
}

class ScenarioClass{
    var sampleScenario:Scenario
    init(image: String? = nil, imageCoordinates: Array<Int> = [], imagePosition: Int, options: Array<String> = [], id: String = ""){
        sampleScenario = Scenario(image: "", imageCoordinates: [], imagePosition: 0, options: [], id: "")
    }
}
struct ScenarioLibrary{
    var duckScenario: ScenarioClass = .init(image:"duck", imageCoordinates: [100,100], imagePosition: 0, options: ["Chase Duck","Watch from a Distance"], id: "duckScenario")
}
