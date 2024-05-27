//
//  Badge.swift
//  SwiftUITutorial
//
//  Created by Ryeong on 5/28/24.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8)) * 360.0
            )
        }
        .opacity(0.5)
    }
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geomerty in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geomerty.size.width / 2.0,
                              y: (3.0 / 4.0) * geomerty.size.height)
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
