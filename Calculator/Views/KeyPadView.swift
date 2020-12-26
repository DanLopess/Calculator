//
//  KeyPadView.swift
//  Calculator
//
//  Created by Daniel Lopes on 26/12/2020.
//

import SwiftUI

struct KeyPadView: View {
    @Binding var value: String
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(0..<keys.count) { index in
                HStack (spacing: 10) {
                    ForEach(0..<keys[index].count) { innerIndex in
                        KeyView(value: $value, key: keys[index][innerIndex])
                    }
                }
            }
        }
    }
}
