//
//  AwardView.swift
//  FitnessApp
//
//  Created by felicia tan on 27/7/24.
//

import SwiftUI

struct AwardView: View {
    var award: Award
    @State private var showingDetail = false

    var body: some View {
        HStack {
            Image(systemName: award.iconName)
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
            
            VStack(alignment: .leading) {
                Text(award.title)
                    .font(.headline)
                Text(award.description)
                    .font(.subheadline)
                if let dateEarned = award.dateEarned {
                    Text("Earned on \(dateEarned, formatter: dateFormatter)")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
        .onTapGesture {
            showingDetail.toggle()
        }
        .sheet(isPresented: $showingDetail) {
            AwardDetailView(award: award)
        }
    }
}

let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    return formatter
}()

