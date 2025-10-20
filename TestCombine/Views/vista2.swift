//
//  vista2.swift
//  TestCombine
//
//  Created by Paul F on 28/07/25.
//

import SwiftUI

//V-95,paso 1.5
struct vista2: View {
    
    @ObservedObject var contador = Modelo()
    
    var body: some View {
        VStack{
            Text("Contador vista 2(ObservedObject)Se reinicia = \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}

#Preview {
    vista2()
}
