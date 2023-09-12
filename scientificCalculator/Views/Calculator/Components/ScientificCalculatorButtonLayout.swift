//
//  ScientificCalculatorButtonLayout.swift
//  scientificCalculator
//
//  Created by Joshua on 05/09/23.
//

import SwiftUI

struct ScientificCalculatorButtonLayout: View {
    
    @State var tappedButton = "0"
    @ObservedObject var scientificCalculatorViewModel: ScientificCalculatorViewModel
    
    var body: some View {
        VStack(spacing: 10){
            HStack(spacing: 15){
                
                ScientificCalculatorButton(buttonInput: .clear, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .percent, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .percent, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .pi, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonInput: .delete, scientificCalculatorViewModel: scientificCalculatorViewModel)
            }
            HStack(spacing: 15){
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .sqrt, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .cube, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .sin, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .cos, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .tan, scientificCalculatorViewModel: scientificCalculatorViewModel)
            }
            HStack(spacing: 15){
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .exponent, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .per, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .arcsin, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .arccos, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .arctan, scientificCalculatorViewModel: scientificCalculatorViewModel)
            }
            HStack(spacing: 15){
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .seven, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .eight, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .nine, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .divide, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .multiply, scientificCalculatorViewModel: scientificCalculatorViewModel)
            }
            HStack(spacing: 15){
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .four, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .five, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .six, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .negative, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .subtract, scientificCalculatorViewModel: scientificCalculatorViewModel)
            }
            HStack(spacing: 15){
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .one, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .two, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .three, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .faktorial, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .add, scientificCalculatorViewModel: scientificCalculatorViewModel)
            }
            HStack(spacing: 15){
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .decimal, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.91, green: 0.91, blue: 0.91), blackFont: true, buttonInput: .zero, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .openbracket, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonColor: Color(red: 0.08, green: 0.12, blue: 0.27), buttonInput: .closebracket, scientificCalculatorViewModel: scientificCalculatorViewModel)
                ScientificCalculatorButton(buttonInput: .equal, scientificCalculatorViewModel: scientificCalculatorViewModel)
            }
        }
        .padding(.horizontal, 18)
    }
}

struct ScientificCalculatorButtonLayout_Previews: PreviewProvider {
    static var previews: some View {
        ScientificCalculatorButtonLayout(scientificCalculatorViewModel: .init())
    }
}
