//
//  InputtedValue.swift
//  scientificCalculator
//
//  Created by Joshua on 05/09/23.
//

import SwiftUI

struct InputtedValue: View {
    @ObservedObject var basicCalculatorViewModel: BasicCalculatorViewModel
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Text(basicCalculatorViewModel.result)
                    .multilineTextAlignment(.trailing)
                    .font(.system(size: 70).weight(.bold))
                    .foregroundColor(.white)
                    .frame(width: 240, height: 93, alignment: .trailing)
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
                    Text(basicCalculatorViewModel.shownValue)
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

struct InputtedValue_Previews: PreviewProvider {
    static var previews: some View {
        InputtedValue(basicCalculatorViewModel: BasicCalculatorViewModel())
    }
}
