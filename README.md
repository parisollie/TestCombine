# Combine # 15 JM

A new iOS project.

## Getting Started

This project is a starting point for a iOS application.

This application contains the following knowledge:
  
- Vstack,Zstack,Htsack,Aligment,Padding
  
- Slider

- iOS 14

- Combine basic

- ObservableObject: observedObject, StateObject y EnvironmentObject

# Teoría

Combine:

-Es similar al State ,pero desde una clase.

-Es un framework para personalizar el manejo de eventos asíncronos mediante la combinación de operadores
de procesamiento de eventos.


**Qué pasa si nosotros tenemos una clase que ya está hecha?
Nos referimos a en otra parte de la aplicación.
Por ejemplo, ahí es donde entra combine ,lo utilizamos en una clase de forma externa,
crear variables, métodos, funciones, etcétera, para que puedan ser utilizados en nuestras vistas.

O sea, combine tiene un protocolo llamado Observable Object que al momento de colocarlo le estamos
diciendo que podemos utilizar tres propiedades importantes en las vistas.

Combine -> ObservableObject(Protocolo) -> @ObservedObject ,@StateObject ,@EnvironmentObject -> Views(Struct)


- @ObservableObject, se puede usar en múltiples vistas de forma individual y se reinicia cuando la vista 
cambia

- @StateObject, se puede usar en múltiples vistas de forma individual y NO se reinicia cuando  
la vista cambia.

- @EnvironmentObject, Se puede usar en múltiples vistas al mismo tiempo y NO reinicia cuando la 
vista cambia.

-@StateObject como el dueño de los datos.
Cuando una vista crea por primera vez un objeto que contiene datos observables 
(como un contador, una lista, etc.), se debe usar @StateObject. 
Esto asegura que el objeto se mantenga vivo mientras la vista exista, y que los cambios
en sus datos hagan que la vista se actualice.Úsalo cuando la vista es responsable de crear
y conservar el objeto.

-@ObservedObject
Este se usa cuando la vista recibe el objeto desde afuera (por ejemplo, desde otra vista que ya lo creó).
La vista observa los cambios en ese objeto, pero no es dueña de él. Solo se encarga 
de responder a los cambios que ocurran en el objeto, sin controlar su ciclo de vida.
Úsalo cuando otro se encarga del objeto y tú solo lo estás observando.

-@EnvironmentObject es una forma de compartir datos globales entre muchas
 vistas en tu app sin tener que pasarlos manualmente.Es como decir:
 “Este objeto está disponible para todas las vistas que lo necesiten, sin tener
  que entregárselo a cada una”.

Si hacemos una variable normal dentro de una vista,por ejemplo :
-var contador  = 0
Esta variable solo va a funcionar solamente dentro de la clase.

Pero cuando queremos que  se reflejen en otras vistas, siempre lleven de llevar el @publisher.
Y esta es la que funciona fuera de la clase, utilizándola en las vistas.
Esa es la diferencia entre una var normal y una var con publisher.

-@Published var contador = 0

Datos importantes

Cuando nosotros estamos, digamos, inyectando una nueva vista a nuestra estructura principal 
o a una estructura X, el @ObserverObject se va a reiniciar solamente en estos casos.
Pero cuando el @ObserverObject, está de forma nativa, por así decirlo, dentro de esta propia
estructura no se reinicia.

## The aplication look like this :

![Captura de Pantalla 2024-05-26 a la(s) 13 00 12](https://github.com/user-attachments/assets/be71f106-aea4-46d2-a55f-e4037261fd65)




