//
//  KeyPadView.swift
//  Calculator
//
//  Created by Daniel Lopes on 26/12/2020.
//

import SwiftUI

struct KeyPadView: View {
    @EnvironmentObject var calculatorVM: CalculatorVM
    
    var body: some View {
        let keys:[[Key]] = calculatorVM.getKeys()
        
        return VStack(spacing: 10) {
            ForEach(0..<keys.count) { index in
                HStack (spacing: 10) {
                    ForEach(0..<keys[index].count) { innerIndex in
                        KeyView(key: keys[index][innerIndex])
                    }
                }
            }
        }
    }
}
