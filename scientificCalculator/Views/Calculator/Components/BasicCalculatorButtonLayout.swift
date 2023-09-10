//
//  CalculatorButtonLayout.swift
//  scientificCalculator
//
//  Created by Joshua on 05/09/23.
//

import SwiftUI

struct BasicCalculatorButtonLayout: View {
    
    @State var tappedButton = "0"
    @ObservedObject var basicCalculatorViewModel: BasicCalculatorViewModel
    
    var body: some View {
        VStack(spacing: 10){
            HStack(spacing: 15){
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .seven, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .eight, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .nine, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonInput: .delete, basicCalculatorViewModel: basicCalculatorViewModel)
            }
            HStack(spacing: 15){
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .four, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .five, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .six, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .negative, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .subtract, basicCalculatorViewModel: basicCalculatorViewModel)
            }
            HStack(spacing: 15){
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .one, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .two, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .three, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .multiply, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .add, basicCalculatorViewModel: basicCalculatorViewModel)
            }
            HStack(spacing: 15){
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .decimal, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .zero, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .percent, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .divide, basicCalculatorViewModel: basicCalculatorViewModel)
                CalculatorButton(buttonInput: .equal, basicCalculatorViewModel: basicCalculatorViewModel)
            }
        }
        .padding(.horizontal, 18)
    }
}

struct BasicCalculatorButtonLayout_Previews: PreviewProvider {
    static var previews: some View {
        BasicCalculatorButtonLayout(basicCalculatorViewModel: .init())
    }
}


