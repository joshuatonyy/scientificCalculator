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
    @Published var showAlert = false
    @Published var result = ""

    let operators = ["/", "+", "X", "%"]
    
    var x = 0
    
    func didTap(button: BasicCalculatorButtonCategory){
        switch button {
        case .add, .subtract, .percent, .divide, .multiply:
            addOperator(button.rawValue)
        case .equal:
            result = calculateResults()
        case .clear:
            shownValue = "0"
            result = ""
        case .delete:
            shownValue = String(shownValue.dropLast())
        case .negative:
            addMinus()
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
    
    func addOperator(_ button : String)
    {
        if !shownValue.isEmpty
        {
            let last = String(shownValue.last!)
            if operators.contains(last)
            {
                shownValue.removeLast()
            }
            shownValue += button
        }
    }
    
    func addMinus()
    {
        if shownValue == "0"
        {
            shownValue = "-"
        }
        else if shownValue.last! != "-"{
            shownValue = "-" + shownValue
        }
    }
    
    func calculateResults() -> String
    {
        if(validInput())
        {
            var workings = shownValue.replacingOccurrences(of: "%", with: "*0.01")
            workings = workings.replacingOccurrences(of: "×", with: "*")
            workings = workings.replacingOccurrences(of: "÷", with: "/")
            let expression = NSExpression(format: workings)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            return formatResult(val: result)
        }
        showAlert = true
        return ""
    }
    
    func validInput() -> Bool
    {
        if(shownValue.isEmpty)
        {
            return false
        }
        let last = String(shownValue.last!)
        
        if(operators.contains(last) || last == "-")
        {
            if(last != "%" || shownValue.count == 1)
            {
                return false
            }
        }
        
        return true
    }
    
    func formatResult(val : Double) -> String
    {
        return String(format: "%.2f", val)
    }
}
