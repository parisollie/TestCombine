
//
//  ContentView.swift
//  TestCombine
//
//  Created by Paul Jaime Felix Flores on 18/04/23.
//

// MARK: - Teoria
/**
 V-93,Combine
 Es similar al State ,pero desde una clase.
 Es un framework para personalizar el manejo de eventos asíncronos mediante la combinación de operadores de procesamiento de eventos.
 
 En pocas palabras, lo que hace Combine y que nos puede ayudar es muy similar a lo que hacemos con el State , el state bar, etcétera, pero con la diferencia de que podemos hacerlo de manera externa.
 
 Me explico:
 Cuando nosotros utilizamos el State lo utilizamos de forma interna en una vista que a fin de cuentas es una estructura y podemos combinarlo con otras vistas a través del binding ,p ero solamente funciona de forma interna.

 **Qué pasa si nosotros tenemos una clase que ya está hecha?
 
 Nos referimos a en otra parte de la aplicación.
 
 Por ejemplo, ahí es donde entra combine ,lo utilizamos en una clase de forma externa,crear variables, métodos, funciones, etcétera, para que puedan ser utilizados en nuestras vistas.

 O sea, combine tiene un protocolo llamado Observable Object que al momento de colocarlo le estamos diciendo que podemos utilizar tres propiedades importantes en las vistas ya sea :ObservedObject ,@StateObject  & @EnvironmentObject ,pero estos vienen desde una clase.

 Combine -> ObservableObject(Protocolo) -> @ObservedObject ,@StateObject ,@EnvironmentObject -> Views(Struct)

 ----------  @ObservableObject------------------
 @ObservableObject: Se puede usar en múltiples vistas de forma individual y se reinicia cuando la vista cambia.

 A qué se refiere de forma individual?
 En nuestra clase vamos a tener un una variable, digamos un contador que está en cero y tenemos la vista A la vista B y la vista C.
 
 En la vista A incrementamos ese contador, digamos al número tres, en la vista B al 4 y a la vista C al 5.
 
 O sea, todos parten desde la misma variable, pero en cada una de las vistas le estamos dando un valor diferente.
 
 Por eso el de forma individual y se reinicia cuando la vista cambia.
 
 Qué quiere decir esto?
 
 Cuando nosotros usamos el @ObservableObject en alguna vista, digamos la vista A y tenemos un State, una variable state está siendo utilizada, por ejemplo, en un TextView al momento de hacer el binding con el texto y tenemos, por ejemplo, el título en un texto al momento de empezar a escribir,pues en la en el text del título se va a ver el cambio.
 
 Esto quiere decir que la vista se está actualizando al momento de que se hace esa actualización, entonces se reinicia o se resetea lo que es el @ObservableObject, porque es como si estuviéramos refrescando
 la página, por así decirlo, y entonces cambia nuevamente a cero.
 
 ----  @StateObject----------
 @StateObject: Se puede usar en múltiples vistas de forma individual y no se reinicia cuando la vista cambia.
 
 El @StateObject:  funciona prácticamente igual que el @StateObject, solo que con la diferencia de que este no se reinicia, este se mantiene en la vista.

 ----EnvironmentObject-----------
 @EnvironmentObject: Se puede usar en múltiples vistas al mismo tiempo y no reinicia cuando la vista cambia.
 
 Y @EnvironmentObjectt se puede usar en múltiples vistas al mismo tiempo.
 
 Qué quiere decir?
 
 Volviendo al ejemplo de las tres vistas que tenemos vista, vista B y vista C, y nosotros incrementamos el contador, digamos a tres en las tres vistas va a obtener el mismo número.
 Y también no se reinicia cuando la vista cambia.

 */
import SwiftUI

struct ContentView: View {
    // Paso 1.3, le pasamos para poder observar el modelo
    @ObservedObject var contador = Modelo()
    
    //Paso 1.7
    //@State private var titulo = ""
    
    var body: some View {
        VStack{
            /*
             //Paso 1.9
             //Si ponemos vistas dentro de vistas con el observedObjectObject se peuden reiniciar los valores
             Text(titulo).font(.title)
             inyectamos un contador,para verlo en string
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
            //Los observedObject se pueden reiniciar
            
            /*
             //paso 1.8
             Button("titulo"){
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

