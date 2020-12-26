//
//  Key.swift
//  Calculator
//
//  Created by Daniel Lopes on 26/12/2020.
//

import Foundation
import SwiftUI

enum KeyType {
    case Number
    case Operator
}

var operatorSymbols: [String:String] = [
    "+": "plus",
    "-": "minus",
    "*": "multiply",
    "/": "divide",
    "+/-": "plus.slash.minus",
    "%": "percent",
    "=": "equal",
]

struct Key: Identifiable {
    var id: UUID = UUID()
    var label: String
    var color: Color = Color.secondary
    var labelColor: Color = Color.white
    var type: KeyType = KeyType.Number
}
