//
//  ContentView.swift
//  Redditor
//
//  Created by delegatepattern on 4/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var didSaveData = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Programmatic Navigation")
                    .font(.largeTitle).bold()
                Button("Save data and take me to my detail view :)") {
                    saveData()
                }
                .font(.headline)
                .buttonStyle(.bordered)
            }
            .padding()
            .navigationDestination(isPresented: $didSaveData) {
                DetailView()
            }
            .navigationTitle("Programmatic Navigation")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            // For demo purposes. Usually you will wait for a netwrok request to finish then proceed...
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.didSaveData = true
            }
        }
    }
}

// MARK: - Private extension
fileprivate extension ContentView {
    func saveData() {
        // Saving logic goes here and then set the flag to trigger the navigation to your targeted view!
        didSaveData = true
    }
}

#Preview {
    ContentView()
}
