//
//  SharedFunctions.swift
//  ColourSelector
//
//  Created by Lillian Yang on 2022-11-01.
//

import Foundation

//MARK: Functions (actions, logic, things that happen...)
//return a list of palette that have been filtered by the hue selected using the slider, +/- 10°
func filtered(by hue: Double, from list: [SavedPalette]) -> [SavedPalette] {
    
    
    //Debug message
    print("hue is: \(hue)")
    print(list)
    
    
    //Build the range of hues +/- 10
    let hueRange = (hue - 10.0 / 360.0)...(hue + 10.0 / 360.0)
    print("The search/filter range is: \(hueRange)")
    
    //Normally we would use the "filtered" methos available to collection types in Swift
    //To satisfy the AP CReate Task requirements, we'll implemet a linear search which is
    //more easily explained in the written responses
    
    
    //Create an empty list
    var filteredResults: [SavedPalette] = []
    
    //Iterate over the saved palattes and find those close to the selected hue (inside the range)
    for palette in list {
        
        //Look for a palette in the desired range
        if hueRange.contains(palette.hue) {
            filteredResults.append(palette)
        }
        
    }
    
    
    //Resturn the list of filtered results
    return filteredResults
}
