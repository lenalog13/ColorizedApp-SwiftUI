//
//  ContentView.swift
//  ColorizedApp-SwiftUI
//
//  Created by Елена Логинова on 09.04.2023.
//

import SwiftUI

struct ColorizedAppView: View {
    @State private var red = Double.random(in: 1...255).rounded()
    @State private var green = Double.random(in: 1...255).rounded()
    @State private var blue = Double.random(in: 1...255).rounded()
    
    @FocusState private var focusedField: Bool?
    
    
    var body: some View {
        VStack(spacing: 20) {
            ColorView(red: red, green: green, blue: blue)
                .padding(20)
            ColorSliderView(value: $red, color: .red)
            ColorSliderView(value: $green, color: .green)
            ColorSliderView(value: $blue, color: .blue)
            Spacer()
        }
        .padding()
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedAppView()
    }
}
