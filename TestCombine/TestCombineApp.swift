//
//  TestCombineApp.swift
//  TestCombine
//
//  Created by Paul Jaime Felix Flores on 18/04/23.
//

import SwiftUI

@main
struct CombineMainApp: App {
    //V-96,Paso 1.16
    var modelo = Modelo()
    
    var body: some Scene {
        WindowGroup {
            //paso 1.17, es cambiado para que pueda funcionar
            /*
             .environmentObject(modelo), propagamos todas las variables
             que esten en nuestro modelo atraves de todas las vistas subyacentes
             al content View así  que las inyectamos en todos lados.
             
             */
            ContentView().environmentObject(modelo)
        }
    }
}
