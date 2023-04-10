//
//  ColorView.swift
//  ColorizedApp-SwiftUI
//
//  Created by Елена Логинова on 09.04.2023.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
            .frame(height: 220)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .stroke(Color.black, lineWidth: 1))
            .shadow(radius: 10)
     
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 130.0, green: 125.0, blue: 255.0)
    }
}
