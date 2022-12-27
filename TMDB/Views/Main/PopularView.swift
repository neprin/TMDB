//
//  PopularView.swift
//  TMDB
//
//  Created by Pavel Neprin on 12/27/22.
//

import SwiftUI

struct PopularView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Text("The Godfather ")
                .font(.title).bold()
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Mar 14, 1972")
                .font(.footnote.weight(.semibold))
                .foregroundStyle(.secondary)
        }
        .padding(.all, 20.0)
        .padding(.vertical, 20)
        .frame(height: 350.0)
        .background(Color("Background"))
        .cornerRadius(30)
        .shadow(radius: 30)
        .padding(20)
    }
}

struct PopularView_Previews: PreviewProvider {
    static var previews: some View {
        PopularView()
    }
}
