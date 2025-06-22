//
//  ContentView.swift
//  TravelPlanner
//
//  Created by Victor Hugo on 21/06/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = TravelViewModel()
    @State private var showingAddTravel = false
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.travels) { travel in
                    VStack(alignment: .leading) {
                        Text(travel.title)
                            .font(.headline)
                        Text("\(travel.startDate.formatted()) - \(travel.endDate.formatted())")
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle("My Travels")
            .toolbar {
                Button(action: {
                    showingAddTravel = true
                }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddTravel) {
                AddTravelView(viewModel: viewModel)
            }
        }
    }
}

#Preview {
    ContentView()
}
