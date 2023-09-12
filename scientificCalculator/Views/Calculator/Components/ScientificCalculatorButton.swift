//
//  ScientificCalculatorButton.swift
//  scientificCalculator
//
//  Created by Devin Maleke on 12/09/23.
//

import SwiftUI

struct ScientificCalculatorButton: View {
    var buttonColor: Color = Color(red: 0.04, green: 0.52, blue: 1)
    var blackFont: Bool = false
    var imageButton: Bool = false
    var buttonInput: ScientificCalculatorButtonCategory = .clear
    
    @ObservedObject var scientificCalculatorViewModel: ScientificCalculatorViewModel
    
    var body: some View {
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(maxWidth: .infinity, maxHeight: 60)
              .background(buttonColor)
              .cornerRadius(15)
              .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            if imageButton {
                Image(systemName: "delete.left")
                    .font(.system(size: 24).weight(.bold))
                    .foregroundColor(blackFont ? Color.black: Color.white)
            } else {
                Text(buttonInput.rawValue)
                    .font(.system(size: 24).weight(.bold))
                    .foregroundColor(blackFont ? Color.black: Color.white)
            }
        }
        .onTapGesture {
            scientificCalculatorViewModel.didTap(button: buttonInput)
        }
    }
}

struct ScientificCalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        ScientificCalculatorButton(scientificCalculatorViewModel: .init())
    }
}

