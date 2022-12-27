//
//  PreferenceKeys.swift
//  TMDB
//
//  Created by Pavel Neprin on 12/27/22.
//

import SwiftUI

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
