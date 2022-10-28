//
//  MonochromaticPaletteView.swift
//  ColourSelector
//
//  Created by Lillian Yang on 2022-10-28.
//

import SwiftUI

struct MonochromaticPaletteView: View {
    
    //MARK: STORED PROPERTIES
    
    var hue: Double
    
    //MARK: COMPUTED PROPERTIES
    // Make the colour that SwiftUI will use to set the background of the colour swatch
    private var baseColour: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.9)
    }

    private var darkerColour: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.6)
    }

    private var evenDarkerColour: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.3)
    }
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Monochromatic")
                .font(.caption.smallCaps())
                .bold()
            
            HStack(spacing: 0) {
                
                ColourSwatchView(colour: baseColour,
                                 size: 50)

                ColourSwatchView(colour: darkerColour,
                                 size: 50)
                
                ColourSwatchView(colour: evenDarkerColour,
                                 size: 50)
                
                
                Spacer()
        }

        }
    }
}

struct MonochromaticPaletteView_Previews: PreviewProvider {
    static var previews: some View {
        MonochromaticPaletteView(hue: 0.5)
    }
}
