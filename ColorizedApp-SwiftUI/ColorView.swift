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
            uiColor: UIColor(
                red: CGFloat(red),
                green: CGFloat(green),
                blue: CGFloat(blue),
                alpha: 1)
        )
            .frame(height: 220)
            .cornerRadius(10)
            .padding()
     
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 1.0, green: 25.0, blue: 0.0)
    }
}
