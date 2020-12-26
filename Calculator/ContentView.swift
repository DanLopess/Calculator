//
//  ContentView.swift
//  Calculator
//
//  Created by Daniel Lopes on 26/12/2020.
//

import SwiftUI

//var keys: [[Key]] = 

struct ContentView: View {
    var calculatorVM: CalculatorVM = CalculatorVM()
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.black)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack (spacing: 15) {
                ResultView()
                KeyPadView()
                Spacer()
            }.padding(20)
        }.environmentObject(calculatorVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
