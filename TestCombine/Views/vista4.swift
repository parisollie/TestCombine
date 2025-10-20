//
//  vista4.swift
//  TestCombine
//
//  Created by Paul F on 28/07/25.
//

import SwiftUI

//Paso 2.2
struct vista4: View {
    //Paso 2.6 Hacemos referencia con (:)
    @EnvironmentObject var contador : Modelo
    
    var body: some View {
        VStack{
            Text("Contador vista 4(EnvironmentObject)Aumenta en los que la tengan y no Se reinica = \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}

#Preview {
    vista4()
        .environmentObject(Modelo())
}
