//
//  TestCombineApp.swift
//  TestCombine
//
//  Created by Paul Jaime Felix Flores on 18/04/23.
//

import SwiftUI

@main
struct CombineMainApp: App {
    //Paso 2.4
    var modelo = Modelo()
    
    var body: some Scene {
        WindowGroup {
            //Paso 2.5,lo cambiamos para que pueda funcionar el EnviromentObject sino no funciona.
            /*
               .environmentObject(modelo): propagamos todas las variables
                que esten en nuestro modelo atraves de todas las vistas subyacentes
                al content View así  que las inyectamos en todos lados.
             */
            ContentView().environmentObject(modelo)
        }
    }
}
