//
//  GameplaySetup.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 14/11/R6.
//

import Foundation
import SwiftUI


class ScenarioClass: Identifiable{
    let title: String
    let image: String
    let imageCoordinates: Array<Int>
    var imagePosition: Int
    var options: Array<String>
    var id: String
    init(title: String, image: String, imageCoordinates: Array<Int>, imagePosition: Int, options: Array<String>, id: String = ""){
        self.title = title
        self.image = image
        self.imageCoordinates = imageCoordinates
        self.imagePosition = imagePosition
        self.options = options
        self.id = id
    }
}
struct ScenarioLibrary{
    var duckScenario: ScenarioClass = .init(title: "You see a duck walking around the perimeter of the pond.", image:"duck", imageCoordinates: [100,100], imagePosition: 0, options: ["Chase Duck","Watch from a Distance"], id: "duckScenario")
}
