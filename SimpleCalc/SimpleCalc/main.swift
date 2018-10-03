//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        let word:String = args[args.count - 1]
        
        switch word {
            case "count" :
                return (args.count - 1)
            case "avg":
                if(args.count == 1){
                    return 0
                } else {
                    var total = 0;
                    for i in 0...(args.count - 2) {
                        total += Int(args[i])!
                    }
                    return total/(args.count-1)
                }
            case "fact":
                if(args.count == 1){
                    return 0
                }
                var number:Int = Int(args[0])!
                
                if(number == 1) {
                    return 1
                }
                var total = 1
                while(number != 0) {
                    total *= number
                    number = number - 1
                }
                return total
            
        
        default:
            let firstNumber:Int = Int(args[0])!
            let secondNumber:Int = Int(args[2])!
            let operation = args[1]
        
            switch operation {
                case "+":
                    return Int(firstNumber + secondNumber)
                case "-":
                    return Int(firstNumber - secondNumber)
                case "*":
                    return Int(firstNumber * secondNumber)
                case "/":
                    return Int(firstNumber / secondNumber)
                case "%":
                    return Int(firstNumber % secondNumber)
                default:
                    return 0
            }
        }
    }
    
    public func calculate(_ arg: String) -> Int {
        return calculate( arg._split(separator: " ").map({ substr in String(substr) }) )
    }
}

print("UW Calculator v1")
print("Enter an expression separated by returns:")
let first = readLine()!
let operation = readLine()!
let second = readLine()!
print(Calculator().calculate([first, operation, second]))

