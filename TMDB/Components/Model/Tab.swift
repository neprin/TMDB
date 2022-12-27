//
//  Tab.swift
//  TMDB
//
//  Created by Pavel Neprin on 12/27/22.
//

import SwiftUI

struct TabItem: Identifiable {
    let id = UUID()
    var name: String
    var icon: String
    var color: Color
    var selection: Tab
}

var tabItems = [
    TabItem(name: "Popular", icon: "popcorn.fill", color: .teal, selection: .popular),
    TabItem(name: "Top", icon: "play.square.stack.fill", color: .red, selection: .top),
    TabItem(name: "Search", icon: "magnifyingglass", color: .blue, selection: .search),
    TabItem(name: "Favorites", icon: "star.square.on.square.fill", color: .pink, selection: .favorites)
]

enum Tab: String {
    case popular
    case top
    case search
    case favorites
}
