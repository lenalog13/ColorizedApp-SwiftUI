//
//  ContentView.swift
//  ColorizedApp-SwiftUI
//
//  Created by Елена Логинова on 09.04.2023.
//

import SwiftUI

struct ColorizedAppView: View {
    @State private var red = Double.random(in: 1...255)
    @State private var green = Double.random(in: 1...255)
    @State private var blue = Double.random(in: 1...255)
    
    var body: some View {
        VStack {
           ColorView(red: red, green: green, blue: blue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedAppView()
    }
}
