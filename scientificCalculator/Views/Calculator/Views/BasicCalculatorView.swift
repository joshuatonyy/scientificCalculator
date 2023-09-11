//
//  BasicCalculatorView.swift
//  scientificCalculator
//
//  Created by Joshua on 05/09/23.
//

import SwiftUI

struct BasicCalculatorView: View {
    @State var value = "0"
//    @Binding var tappedButton: String
    @StateObject var basicCalculatorViewModel = BasicCalculatorViewModel()
    var body: some View {
        ZStack {
            Color(red: 0.15, green: 0.15, blue: 0.15)
            VStack(spacing: 11) {
                Spacer()
                HStack{
                    InputtedValue(basicCalculatorViewModel: basicCalculatorViewModel)
                }
                .padding(.horizontal, 9)
                ZStack {
                    BasicCalculatorButtonLayout( basicCalculatorViewModel: basicCalculatorViewModel)
                }
                .foregroundColor(.clear)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .frame(width: 393, height: 329)
                .background(.black)
                .cornerRadius(radius: 25, corners: [.topLeft, .topRight])
                .shadow(color: .black.opacity(0.3), radius: 15, x: 0, y: 10)
            }
        }
    }
}

struct BasicCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        BasicCalculatorView().preferredColorScheme(.dark)
    }
}

extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

