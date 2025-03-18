
//
//  ContentView.swift
//  TestCombine
//
//  Created by Paul Jaime Felix Flores on 18/04/23.
//

/*
 Combine

 Es un framework para personalizar el manejo de evntos asíncronos mediante la combinacion de operadores
 de procesamiento de eventos.

 Se usa en una clase manera externa , crear funciones ,variables,que puedan ser usadas en nuestras vistas. su protocolo
 es ObservableObject, observedObject, StateObject y EnvironmentObject


 @ObservableObject, se puede usar en múltiples vistas de forma indivicual y se reinicia cuando la vista cambia
 @StateObject, se puede usar en múltiples vistas de forma individual y No se reinicia cuando cuando la vista.
 @EnvironmentObject, Se puede usar en múltiples vistas al mismo tiempo y no reinicia cuando la vista cambia.
 */
import SwiftUI

struct ContentView: View {
    //V-94,paso 1.3
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
            //paso 1.10
            Button("Reiniciar"){
                contador.contador += 1
            }
            /*
            //Paso 1.4
            Button("Sumar contador"){
                contador.contador += 1
            }*/
            
            //V-97
            /* Los observer object se pueden reiniciar*/
            
            /*Button("titulo"){
                //paso 1.8
                titulo = "Nuevo titulo"
            }*/
             Spacer()
             //Paso 1.6
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

//V-95,paso 1.5
struct vista2: View {
    
    @ObservedObject var contador = Modelo()
    
    var body: some View {
        VStack{
            Text("Contador vista 2(ObservedObject) = \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}
//V-96,paso 1.11
struct vista3: View {
    /*No se reinicia al momento de que cambia la vista , sino que guarda la vista
     y deja lo que esta alamcenado */
    @StateObject var contador = Modelo()
    
    var body: some View {
        VStack{
            Text("Contador vista 3(StateObject) = \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}


//Paso 1.12
struct vista4: View {
    
    //Hacemos referencia con (:)
    @EnvironmentObject var contador : Modelo
    
    var body: some View {
        VStack{
            Text("Contador vista 4(EnvironmentObject) = \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}



//Paso 1.15
struct vista5: View {
    
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
    ContentView()
        .environmentObject(Modelo())
}

