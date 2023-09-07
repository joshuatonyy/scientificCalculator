//
//  InputtedValue.swift
//  scientificCalculator
//
//  Created by Joshua on 05/09/23.
//

import SwiftUI

struct InputtedValue: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth: .infinity, maxHeight: 48)
                .background(.black)
                .cornerRadius(25)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                    .inset(by: 0.5)
                    .stroke(.black, lineWidth: 1)
                )
            HStack{
                Image(systemName: "clock.arrow.circlepath")
                    .font(.system(size: 28))
                    .bold()
                    .foregroundColor(Color(red: 0.04, green: 0.52, blue: 1))
                Spacer()
                Text("12-4+70-15x27")
                    .font(.system(size: 18).weight(.medium))
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 16, alignment: .trailing)
            }
            .padding(.horizontal, 11)
        }
    }
}

struct InputtedValue_Previews: PreviewProvider {
    static var previews: some View {
        InputtedValue()
    }
}
