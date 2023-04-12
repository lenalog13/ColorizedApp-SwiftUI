//
//  TextFieldView.swift
//  ColorizedApp-SwiftUI
//
//  Created by Елена Логинова on 09.04.2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var value: Double
    @Binding var text: String
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $text) { _ in
            withAnimation {
                checkValue()
            }
        }
        .frame(width: 50)
        .multilineTextAlignment(.center)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
            Text("Please enter value from 0 to 255")
        }
    }
    
    private func checkValue() {
        if let value = Int(text),
            value >= 0 && value <= 255 {
            self.value = Double(value)
        } else {
            showAlert.toggle()
            value = 0
            text = "0"
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(
            value: .constant(255),
            text: .constant("255"))
    }
}
