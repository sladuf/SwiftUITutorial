//
//  SwiftUITutorialApp.swift
//  SwiftUITutorial
//
//  Created by Ryeong on 5/24/24.
//

import SwiftUI

@main
struct SwiftUITutorialApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
