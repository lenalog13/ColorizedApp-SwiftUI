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
    
    @FocusState private var focusedField: Field?
    
    
    var body: some View {
        
        ZStack{
            
            Color(.white)
                .ignoresSafeArea()
                .onTapGesture {
                    focusedField = nil
                }
            
            VStack(spacing: 20) {
                ColorView(red: red, green: green, blue: blue)
                    .padding(20)
                    .onTapGesture {
                        focusedField = nil
                    }
                
                ColorSliderView(value: $red, color: .red)
                    .focused($focusedField, equals: .red)
                ColorSliderView(value: $green, color: .green)
                    .focused($focusedField, equals: .green)
                ColorSliderView(value: $blue, color: .blue)
                    .focused($focusedField, equals: .blue)
                
                Spacer()
            }
            .padding()
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button(action: previousField) {
                        Image(systemName: "chevron.up")
                    }
                    Button(action: nextField) {
                        Image(systemName: "chevron.down")
                    }
                    Spacer()
                    Button("Done") {
                        focusedField = nil
                    }
                }
            }
            
        }
    }
}

extension ColorizedAppView {
    
    enum Field: Hashable {
        case red
        case green
        case blue
    }
    
    private func nextField() {
        switch focusedField {
        case .red:
            focusedField = .green
        case .green:
            focusedField = .blue
        case .blue:
            focusedField = .red
        case .none:
            focusedField = nil
        }
    }
    
    private func previousField() {
        switch focusedField {
        case .red:
            focusedField = .blue
        case .green:
            focusedField = .red
        case .blue:
            focusedField = .green
        case .none:
            focusedField = nil
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedAppView()
    }
}
