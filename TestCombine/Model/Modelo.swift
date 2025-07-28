//
//  Modelo.swift
//  TestCombine
//
//  Created by Paul Jaime Felix Flores on 18/04/23.
//

/*
 V-94, paso 1.0,ponemos el Framework de Combine
 y creamos el modelo
*/
import Combine

//Paso 1.1, ponemos el ObservableObject, para poder observarlo
class Modelo: ObservableObject {
    /*
     Paso 1.2 toda las variables que queramos de manera asíncrona, cambiar el valor
     que se reflejen en las vistas deben llevar published.
     
     Si hacemos una variable normal dentro de una vista,por ejemplo :
     -var contador  = 0
     Esta variable solo va a funcionar solamente dentro de la clase.

     Pero cuando queremos que  se reflejen en otras vistas, siempre lleven de llevar el @publisher.
     Y esta es la que funciona fuera de la clase, utilizándola en las vistas.
     Esa es la diferencia entre una var normal y una var con publisher.

     -@Published var contador = 0
    */
    @Published var contador = 0
   
}

