//
//  Award.swift
//  FitnessApp
//
//  Created by felicia tan on 27/7/24.
//

import SwiftUI

struct Award: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let dateEarned: Date?
    let iconName: String
}
