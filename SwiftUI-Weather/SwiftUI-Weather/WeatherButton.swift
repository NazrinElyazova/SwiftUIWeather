//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Nazrin on 17.04.24.
//

import SwiftUI

struct WeatherButton: View {
    var buttonLabel: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(buttonLabel)
            .frame(width: 250, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(10)
            .font(.system(size: 24, weight: .bold, design: .default))
    }
}
