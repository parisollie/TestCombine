//
//  Modelo.swift
//  TestCombine
//
//  Created by Paul Jaime Felix Flores on 18/04/23.
//

//V-94, paso 1.0, creamos el modelo e importamos Combine.
import Combine

//Paso 1.1, ponemos el ObservableObject
class Modelo: ObservableObject {
    //Paso 1.2 toda las variables que queremos de manera asìncrona deben llevar published.
    @Published var contador = 0
   
}

