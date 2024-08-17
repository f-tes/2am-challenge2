//
//  AwardDetailView.swift
//  FitnessApp
//
//  Created by felicia tan on 27/7/24.
//

import SwiftUI

struct AwardDetailView: View {
    var award: Award

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(systemName: award.iconName)
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            
            Text(award.title)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(award.description)
                .font(.body)
            
            if let dateEarned = award.dateEarned {
                Text("Earned on \(dateEarned, formatter: dateFormatter)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding()
    }
}
