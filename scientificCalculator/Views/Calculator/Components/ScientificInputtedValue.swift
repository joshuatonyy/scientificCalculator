//
//  ScientificInputtedValue.swift
//  scientificCalculator
//
//  Created by Devin Maleke on 12/09/23.
//

import SwiftUI

struct ScientificInputtedValue: View {
    @ObservedObject var scientificCalculatorViewModel: ScientificCalculatorViewModel
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Text(scientificCalculatorViewModel.result)
                    .multilineTextAlignment(.trailing)
                    .font(.system(size: 50).weight(.bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .frame(height: 93)
            }
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
                    //MARK: Output
                    Text(scientificCalculatorViewModel.shownValue)
                        .font(.system(size: 18).weight(.medium))
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.vertical)
                    
                }
                .padding(.horizontal, 11)
            }
        }
    }
}

struct ScientificInputtedValue_Previews: PreviewProvider {
    static var previews: some View {
        ScientificInputtedValue(scientificCalculatorViewModel: ScientificCalculatorViewModel())
    }
}

