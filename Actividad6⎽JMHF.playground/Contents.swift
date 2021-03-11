import UIKit

//Crea el operador para realizar la potencia del valor a a la potencia b en valores enteros.
infix operator +++
func +++(num:Int, po:Int)
{
    var potencia = po
    var numero = num
    var resultado = 1
    var mgs = ""
    while potencia >= 1 {
    resultado = resultado * numero
    potencia = potencia - 1
    }
   print("El resultado es: \(resultado)")
}
 
 5+++5


//Crea el operador |> para ordenar la colección [2,5,3,4] de menor a mayor.
prefix operator |>
var numeros2 = [2,5,3,4]
prefix func |>(orden:String)
{
    let numerosOrdenados2 = numeros2.sorted(by: <)
    print(numerosOrdenados2)
}

|>"orden"

//Del conjunto de datos en el Array [2,3,4,5], crea el subscript para modificar los valores multiplicados por el valor 2 y extrae al valor dado un índice.
let cantidades = [2,3,4,5]

class Cantidad
{
    var valores: [Int]
    init(v:[Int])
     {
     self.valores = v
    }
    
    subscript(idx:Int) -> Int
    {
        get
        {
            return valores [idx]
        }

        set(nuevoValor)
        {
            valores[idx] = nuevoValor
        }
    }
}

let v1 = Cantidad(v: cantidades)
//extraer los valores multpiplos del 2 y cambiarlo
v1[0] = 1
v1[2] = 2

//muestra los arreglos
print("arreglo original \(cantidades)")
print("arreglo nuevo \(v1.valores)")

//6
struct puntos{
   var punto: CGPoint
  
  
    init(valorX:Int,valorY:Int) {
        punto = CGPoint(x:valorX,y:valorY)
    }
}

var enemigos = puntos(valorX:5,valorY:9)
print(enemigos)

//Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]

let dictError = ["A":1, "B":2,"C":3]

func ExisteValor(idx:String)
{
    guard let existe = dictError[idx] else{
        print("No existe")
        return
    }
    print("existe \(existe)")

}

ExisteValor(idx:"B")
