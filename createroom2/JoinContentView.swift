//
//  ContentView.swift
//  createroom2
//
//  Created by dhanvin_macbook on 27/7/24.
//

import SwiftUI

struct ContentView: View {

    @State var Sheet = false
    @State private var joinCodes: [String] = []
    @State private var mostRecentJoinCode: String = ""

    var body: some View {
        TabView {
            Text("home")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            VStack {
                Button(action: {
                    Sheet = true
                }) {
                    Text("create room")
                        .font(.title)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                }
                List(joinCodes, id: \.self) { code in
                    Text(code)
                        .font(.largeTitle)
                }
            }
            .tabItem {
                Image(systemName: "plus.app")
                Text("create room")
            }
            .sheet(isPresented: $Sheet) {
                VStack {
                    Text("Create room:")
                    Button("generate join code") {
                        let newCode = generatejoinCode()
                        joinCodes.insert(newCode, at: 0)
                        mostRecentJoinCode = newCode
                    }
                    Text(mostRecentJoinCode)
                        .font(.largeTitle)
                        .padding()
                }
                .padding()
            }
        }
        .padding()
    }

    func generatejoinCode() -> String {
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        return String((0..<6).map{ _ in letters.randomElement()! })
    }
}

#Preview {
    ContentView()
}
