//
//  vista5.swift
//  TestCombine
//
//  Created by Paul F on 28/07/25.
//

import SwiftUI

/**
 El cambio funciona en todas las vistas en las que lo tengas
 ,si aumentamos contador en la vista 4, aumentara en la 5 igual
 */
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
