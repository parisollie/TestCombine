//
//  vista3.swift
//  TestCombine
//
//  Created by Paul F on 28/07/25.
//

import SwiftUI

//V-96,paso 2.1
struct vista3: View {
    /*No se reinicia al momento de que cambia la vista , sino que guarda la vista
     y deja lo que esta almacenado */
    @StateObject var contador = Modelo()
    
    var body: some View {
        VStack{
            Text("Contador vista 3(StateObject)No se reinicia = \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}

#Preview {
    vista3()
}
