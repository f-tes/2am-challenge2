//
//  ContentView.swift
//  FitnessApp
//
//  Created by felicia tan on 27/7/24.
//

import SwiftUI

struct AwardContentView: View {
    var body: some View {
        let sampleAwards = [
            Award(title: "First Run", description: "Completed your first run.", dateEarned: Date(), iconName: "star.fill"),
            Award(title: "10K Run", description: "Completed a 10K run.", dateEarned: nil, iconName: "star.circle.fill"),
            Award(title: "Marathon", description: "Completed a marathon.", dateEarned: Date(), iconName: "crown.fill"),
            Award(title: "Stairmaster", description: "Climbed 15m in elevation.", dateEarned: Date(), iconName: "figure.stair.stepper")

            
        ]
        return AwardsListView(awards: sampleAwards)
    }
}


#Preview {
    AwardContentView()
}
