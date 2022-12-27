//
//  TabBar.swift
//  TMDB
//
//  Created by Pavel Neprin on 12/27/22.
//

import SwiftUI

struct TabBar: View {

    @AppStorage("selectedTab") var selectedTab: Tab = .popular
    @State var color: Color = .teal
    @State var tabItemWith: CGFloat = 0

    var body: some View {

        HStack{
            content
        }
        .padding(.horizontal, 8)
        .padding(.top, 14)
        .frame(height: 88, alignment: .top)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style: .continuous))
        .background(background)
        .overlay(overlay)
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }

    var content: some View {
        ForEach(tabItems) { item in
            Button {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                    selectedTab = item.selection
                    color = item.color
                }
            } label: {
                VStack(spacing: 0) {
                    Image(systemName: item.icon)
                        .symbolVariant(.fill)
                        .font(.body.bold())
                        .frame(width: 44, height: 29)
                    Text(item.name)
                        .font(.caption2)
                        .lineLimit(1)
                }
                .frame(maxWidth: .infinity)
            }
            .foregroundStyle(selectedTab == item.selection ? .primary : .secondary)
            .blendMode(selectedTab == item.selection ? .overlay : .normal)
            .overlay(GeometryReader { proxy in
                Color.clear.preference(key: TabPreferenceKey.self, value: proxy.size.width)
            })
            .onPreferenceChange(TabPreferenceKey.self) { value in
                tabItemWith = value
            }
        }
    }

    var background: some View {
        HStack {
            if selectedTab == .favorites { Spacer() }
            if selectedTab == .top { Spacer() }
            if selectedTab == .search { Spacer(); Spacer() }
            Circle().fill(color).frame(width: tabItemWith)
            if selectedTab == .popular { Spacer() }
            if selectedTab == .top { Spacer(); Spacer() }
            if selectedTab == .search { Spacer() }
        }
            .padding(.horizontal, 8)
    }

    var overlay: some View {
        HStack {
            if selectedTab == .favorites { Spacer() }
            if selectedTab == .top { Spacer() }
            if selectedTab == .search { Spacer(); Spacer() }
            Rectangle()
                .fill(color)
                .frame(width: 23, height: 5)
                .cornerRadius(3)
                .frame(width: tabItemWith)
                .frame(maxHeight: .infinity, alignment: .top)
            if selectedTab == .popular { Spacer() }
            if selectedTab == .top { Spacer(); Spacer() }
            if selectedTab == .search { Spacer() }
        }
            .padding(.horizontal, 8)
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}



