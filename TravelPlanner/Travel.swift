//
//  Travel.swift
//  TravelPlanner
//
//  Created by Victor Hugo on 21/06/25.
//

import Foundation

struct Travel: Identifiable {
    let id: UUID
    var title: String
    var startDate: Date
    var endDate: Date
}
