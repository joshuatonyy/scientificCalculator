//
//  BasicCalculatorViewModel.swift
//  scientificCalculator
//
//  Created by Joshua on 07/09/23.
//

import Foundation

class BasicCalculatorViewModel: ObservableObject {
    var basicCalculatorButton: BasicCalculatorButtonCategory = .zero
    
    
    @Published var shownValue = "0"
    @Published var runningNumber = 0
    
    func didTap(button: BasicCalculatorButtonCategory){
        switch button {
        case .add, .subtract, .multiply, .divide, .equal:
            break
        case .clear:
            break
        case .decimal, .negative, .percent:
            break
        default:
            let number = button.rawValue
            if self.shownValue == "0"{
                self.shownValue = number
            } else {
                self.shownValue = "\(self.shownValue)\(number)"
            }
        }
        
        objectWillChange.send()
    }
}
