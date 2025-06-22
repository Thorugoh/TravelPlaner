//
//  TravelViewModel.swift
//  TravelPlanner
//
//  Created by Victor Hugo on 21/06/25.
//

import Foundation

class TravelViewModel: ObservableObject {
    @Published var travels: [Travel] = []
    
    func addTravel(title: String, start: Date, end: Date) {
        let newTravel = Travel(id: UUID(), title: title, startDate: start, endDate: end)
        travels.append(newTravel)
    }
}
