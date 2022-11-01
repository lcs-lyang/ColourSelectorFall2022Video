//
//  ColourSelectorApp.swift
//  ColourSelector
//
//  Created by Russell Gordon on 2022-10-27.
//

import SwiftUI

@main
struct ColourSelectorApp: App {
    
    //MARK: Stored Properties
    //Our list of saved palettes
    //"spurce of truth"
    @State private var savedPalettes: [SavedPalette] = [] //empty
    
    //MARK: Computed Properties
    
    
    //Windows / screens that make up our app
    var body: some Scene {
        WindowGroup {
            ContentView(savedPalettes: $savedPalettes)
        }
    }
}
