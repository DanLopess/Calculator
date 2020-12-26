//
//  KeyView.swift
//  Calculator
//
//  Created by Daniel Lopes on 26/12/2020.
//

import SwiftUI

struct KeyView: View {
    var key: Key
    @EnvironmentObject var calculatorVM: CalculatorVM
    
    var body: some View {
        let width = key.label == "0" ? UIScreen.main.bounds.width / 2 : UIScreen.main.bounds.width / 4
        let height = UIScreen.main.bounds.width / 4
        
        return Button(action: {
            calculatorVM.handleKeyPress(key: self.key)
            
        }, label: {
            RoundedRectangle(cornerRadius: 200)
            .foregroundColor(key.color)
            .frame(width: width-17, height: height-17, alignment: .center)
            .overlay(
                Group {
                    if (key.type == KeyType.Number) {
                        Text(key.label)
                            .foregroundColor(key.labelColor)
                            .font(.system(size: 35))
                            .padding(.trailing, self.key.label == "0" ? width - 112 : 0)
                    } else {
                        Image(systemName: operatorSymbols[key.label] ?? "plus")
                            .font(.system(size: 30))
                            .foregroundColor(key.labelColor)
                    }
                    
                }
            )
        })
    }
}
