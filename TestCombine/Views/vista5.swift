//
//  vista5.swift
//  TestCombine
//
//  Created by Paul F on 28/07/25.
//

import SwiftUI


//Paso 2.3
struct vista5: View {
    //Paso 2.7, hacemos referencia con los (:)
    @EnvironmentObject var contador : Modelo
    
    var body: some View {
        VStack{
            
            Text("Contador vista 5(EnvironmentObject) = \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}

#Preview {
    vista5()
        .environmentObject(Modelo())
}
