import SwiftUI
struct PondView: View {
    @State var progression: [Int] = []
    @State var currentScenario: ScenarioClass = ScenarioLibrary.pondScenario
    var body: some View {
        GameplayStageView(situation: $currentScenario, progression: $progression)
            .onChange(of: progression) { oldValue, newProgression in
                if newProgression[0] == 1 {
                    currentScenario = ScenarioLibrary.duckScenarioChase
                }
                if newProgression[0] == 2 {
                    currentScenario = ScenarioLibrary.duckScenarioOpening
                }
// Blanked out because index out of range thing, im gonna solve that later.
//                if newProgression[1] == 1 {
//                    currentScenario = ScenarioLibrary.duckScenarioChase
//                }
//                if newProgression[1] == 2 {
//                   currentScenario = ScenarioLibrary.duckScenarioWatch
//                }
            }
    }
}

#Preview {
    @Previewable @State var pondScenario: ScenarioClass = .init(title: "Pond", innate: "You go to one of your hotspots, a pond tucked behind a row of trees. It is quite relaxing to sit and watch the frogs jump around and go about their lives.", speech: "", image: "pond", imageCoordinates: [100, 100], imagePosition: 0, options: ["Watch frogs","Something New?"], id: "pondScenario")
    PondView(progression: [])
}
