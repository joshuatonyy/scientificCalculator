//
//  ScientificCalculatorView.swift
//  scientificCalculator
//
//  Created by Joshua on 05/09/23.
//

import SwiftUI

struct ScientificCalculatorView: View {
    var body: some View {
        ZStack {
            Color(red: 0.15, green: 0.15, blue: 0.15)
            VStack(spacing: 11) {
                Spacer()
                HStack{
                    InputtedValue()
                }
                .padding(.horizontal, 9)
                ZStack {
                    ScientificCalculatorButtonLayout()
                }
                .foregroundColor(.clear)
                .frame(width: 393, height: 536)
                .background(.black)
                .cornerRadius(radius: 25, corners: [.topLeft, .topRight])
                .shadow(color: .black.opacity(0.3), radius: 15, x: 0, y: 10)
            }
        }
    }
}

struct ScientificCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        ScientificCalculatorView().preferredColorScheme(.dark)
    }
}
