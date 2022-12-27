//
//  Model.swift
//  TMDB
//
//  Created by Pavel Neprin on 12/28/22.
//

import SwiftUI
import Combine

class Model: ObservableObject {
    // Tab Bar
    @Published var showTab: Bool = true
    
    // Navigation Bar
    @Published var showNavigation: Bool = true
    
    // Detail View
    @Published var showDetail: Bool = false
}
