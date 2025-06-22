//
//  AddTravelView.swift
//  TravelPlanner
//
//  Created by Victor Hugo on 21/06/25.
//

import SwiftUICore
import SwiftUI

struct AddTravelView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: TravelViewModel

    @State private var title = ""
    @State private var startDate = Date()
    @State private var endDate = Date()

    var body: some View {
        NavigationStack {
            Form {
                TextField("Travel Title", text: $title)
                DatePicker("Start Date", selection: $startDate, displayedComponents: .date)
                DatePicker("End Date", selection: $endDate, displayedComponents: .date)
            }
            .navigationTitle("New Travel")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        viewModel.addTravel(title: title, start: startDate, end: endDate)
                        dismiss()
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}
