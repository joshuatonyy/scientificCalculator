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
        case .add, .subtract, .multiply, .divide:
            addOperator(button.rawValue)
        case .equal:
            result = calculateResults()
        case .clear:
//            shownValue = String(shownValue.dropLast())
            shownValue = "0"
            result = ""
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
    
    func addOperator(_ cell : String)
    {
        if !shownValue.isEmpty
        {
            let last = String(shownValue.last!)
            if operators.contains(last)
            {
                shownValue.removeLast()
            }
            shownValue += cell
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
            workings = workings.replacingOccurrences(of: "X", with: "*")
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
        
        return true
    }
    
    func formatResult(val : Double) -> String
    {
        if(val.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", val)
        }
        
        return String(format: "%.2f", val)
    }
}
