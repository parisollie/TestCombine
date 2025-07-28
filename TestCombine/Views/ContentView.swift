
//
//  ContentView.swift
//  TestCombine
//
//  Created by Paul Jaime Felix Flores on 18/04/23.
//

// MARK: - Teoria
/**
 Combine
 Es similar al State ,pero desde una clase.
 Es un framework para personalizar el manejo de eventos asíncronos mediante la combinación de operadores de procesamiento de eventos.

 **Qué pasa si nosotros tenemos una clase que ya está hecha?
 
 Nos referimos a en otra parte de la aplicación.
 Por ejemplo, ahí es donde entra combine ,lo utilizamos en una clase de forma externa,
 crear variables, métodos, funciones, etcétera, para que puedan ser utilizados en nuestras vistas.

 O sea, combine tiene un protocolo llamado Observable Object que al momento de colocarlo le estamos
 diciendo que podemos utilizar tres propiedades importantes en las vistas.

 Combine -> ObservableObject(Protocolo) -> @ObservedObject ,@StateObject ,@EnvironmentObject -> Views(Struct)


 @ObservableObject: se puede usar en múltiples vistas de forma individual y se reinicia cuando la vista cambia.
 
 @StateObject: se puede usar en múltiples vistas de forma individual y no se reinicia cuando la vista cambia.
 
 @EnvironmentObject: Se puede usar en múltiples vistas al mismo tiempo y no reinicia cuando la vista cambia.
 */
import SwiftUI

struct ContentView: View {
    //V-94,paso 1.3, le pasamos para poder observar el modelo
    @ObservedObject var contador = Modelo()
    
    //Paso 1.7
    //@State private var titulo = ""
    
    var body: some View {
        VStack{
            /*
             Paso 1.9
             Text(titulo).font(.title)
             V-94,\inyectamos un contador,para verlo en string
             */
            Text("Contador = \(contador.contador)")
            
            //V-96,paso 2.0
            Button("Reiniciar"){
                contador.contador += 1
            }
            
            /*
            //Paso 1.4
            Button("Sumar contador"){
                contador.contador += 1
            }*/
            
            //V-97
            //Los observer object se pueden reiniciar
            
            /*Button("titulo"){
                //paso 1.8
                titulo = "Nuevo titulo"
            }*/
            
            Spacer()
            //Paso 1.6, mandamos a llamar las vistas.
            vista2()
            Spacer()
            vista3()
            Spacer()
            vista4()
            Spacer()
            vista5()
        
        }
        .padding()
        
    }
}


#Preview {
    ContentView()
        .environmentObject(Modelo())
}

