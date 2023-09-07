//
//  CalculatorButtonLayout.swift
//  scientificCalculator
//
//  Created by Joshua on 05/09/23.
//

import SwiftUI

struct BasicCalculatorButtonLayout: View {
    var body: some View {
        VStack(spacing: 10){
            HStack(spacing: 15){
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: "7")
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: "8")
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: "9")
                CalculatorButton()
                CalculatorButton(imageButton: true)
            }
            HStack(spacing: 15){
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: "4")
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: "5")
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: "6")
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: "±")
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: "-")
            }
            HStack(spacing: 15){
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: "1")
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: "2")
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: "3")
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: "×")
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: "+")
            }
            HStack(spacing: 15){
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: ".")
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: "0")
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: "%")
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: "÷")
                CalculatorButton(buttonInput: "=")
            }
        }
        .padding(.horizontal, 18)
    }
}

struct BasicCalculatorButtonLayout_Previews: PreviewProvider {
    static var previews: some View {
        BasicCalculatorButtonLayout()
    }
}


