//
//  ScientificCalculatorViewModel.swift
//  scientificCalculator
//
//  Created by Joshua on 07/09/23.
//

import Foundation

class ScientificCalculatorViewModel: ObservableObject {
    var scientificCalculatorButton: ScientificCalculatorButtonCategory = .zero
  
    @Published var shownValue = "0"
    @Published var runningNumber = 0
    @Published var showAlert = false
    @Published var result = ""

    let operators = ["/", "+", "X", "%"]
    
    var x = 0
    
    func didTap(button: ScientificCalculatorButtonCategory){
        switch button {
        case .add, .subtract, .percent, .divide, .multiply:
            //addOperator(button.rawValue)
            break
        case .equal:
            //result = calculateResults()
            break
        case .clear:
            shownValue = "0"
            result = ""
        case .delete:
            shownValue = String(shownValue.dropLast())
        case .decimal:
            shownValue += "."
        case .negative:
            //addMinus()
            break
        default:
            let number = button.rawValue
            if self.shownValue == "0"{
                let expression = NSExpression(format: number)
                let result = expression.expressionValue(with: nil, context: nil) as! Double
                shownValue = String(format: "%.0f", result)
            } else {
                let expression = NSExpression(format: number)
                let result = expression.expressionValue(with: nil, context: nil) as! Double
                shownValue += String(format: "%.0f", result)
            }
        }
        objectWillChange.send()
    }
}
