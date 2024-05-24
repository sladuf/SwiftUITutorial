//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by Ryeong on 5/24/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Lanmark")
        }
    }
}

#Preview {
    LandmarkList()
}