//
//  KeyView.swift
//  Calculator
//
//  Created by Daniel Lopes on 26/12/2020.
//

import SwiftUI

struct KeyView: View {
    @Binding var value: String
    var key: Key
    
    var body: some View {
        let width = key.label == "0" ? UIScreen.main.bounds.width / 2 : UIScreen.main.bounds.width / 4
        let height = UIScreen.main.bounds.width / 4
        
        return Button(action: {
            self.value = self.value == "0" ? self.key.label : self.value + self.key.label
            
        }, label: {
            RoundedRectangle(cornerRadius: 200)
            .foregroundColor(key.color)
            .frame(width: width-17, height: height-17, alignment: .center)
            .overlay(
                Text(key.label)
                    .foregroundColor(key.labelColor)
                    .font(.system(size: 35))
                    .padding(.trailing, self.key.label == "0" ? width - 100 : 0)
            )
        })
    }
}
