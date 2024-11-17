/
//  GameplaySetup.swift
//  Challenge 3 Application
//
//  Created by T Krobot on 14/11/R6.
//

import Foundation
import SwiftUI


struct ScenarioClass: Identifiable {
    let title: String
    let innate: String
    let speech: String
    let image: String
    let imageCoordinates: Array<Int>
    var imagePosition: Int
    var options: Array<String>
    var id: String
}
struct ScenarioLibrary{
    static var duckScenarioOpening: ScenarioClass = .init(title: "You Witness A Duck", innate: "You see a duck walking around the perimeter of the pond. You hardly see ducks around here during your numerous visits here. Your curiosity is piqued.", speech:"", image:"duck", imageCoordinates: [100,100], imagePosition: 0, options: ["Chase Duck","Watch from a Distance"], id: "duckScenarioOpening")
    static var duckScenarioChase: ScenarioClass = .init(title: "Chase that Duck", innate: "You chase the duck around the perimeter of the pond. Taking into consideration its speed, you're not sure if it's a duck or a human. After some time, the duck chooses to take refuge in the center of the pond.", speech: "Quack!", image: "player chase duck", imageCoordinates: [100,100], imagePosition: 0, options: ["Chase duck into pond", "Stop chasing duck"], id: "duckScenarioChase")
    static var duckScenarioWatch: ScenarioClass = .init(title: "Take a Break", innate: "", speech: "", image: "player chase duck", imageCoordinates: [100,100], imagePosition: 0, options: [], id: "duckScenarioWatch")
}
