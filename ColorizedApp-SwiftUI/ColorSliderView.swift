//
//  ColorSliderView.swift
//  ColorizedApp-SwiftUI
//
//  Created by Елена Логинова on 09.04.2023.
//

import SwiftUI

struct ColorSliderView: View {
    
    @Binding var value: Double
    @State private var text = ""
    
    let color: Color
    
    var body: some View {
        HStack{
            Text("\(value.formatted())")
                .frame(width: 35, alignment: .center)
            
            Slider(value: $value, in: 1...255, step: 1)
                .accentColor(color)
                .onChange(of: value) { newValue in
                    text = value.formatted()
                }
            
            TextFieldView(value: $value, text: $text)
            
        }.onAppear {
            text = value.formatted()
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(value: .constant(155), color: .red)
    }
}
