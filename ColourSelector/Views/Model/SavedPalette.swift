//
//  SavedPalette.swift
//  ColourSelector
//
//  Created by Lillian Yang on 2022-10-28.
//

import Foundation

struct SavedPalette: Identifiable {
    let id = UUID()
    let hue: Double
    let saturation: Double = 0.8
    let brightness: Double = 0.9
}
