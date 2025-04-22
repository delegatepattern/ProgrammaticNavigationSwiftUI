//
//  DetailView.swift
//  Redditor
//
//  Created by delegatepattern on 4/22/25.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            Color.accentColor
            Text("Welcome to the Detail View!")
                .foregroundColor(.white)
                .font(.largeTitle).bold()
                .padding(20)
        }
        .navigationTitle("Detail View")
    }
}

#Preview {
    DetailView()
}
