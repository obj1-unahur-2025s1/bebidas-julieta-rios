object tito {
  var rendimiento = 40

  method rentidimiento() = rendimiento

  method peso() = 70
  
  method consumir(cantidad, bebida) {
    rendimiento = bebida.rendimiento(cantidad)
  }
 
  method velocidad() {
    return rendimiento * 490 / self.peso()
    //bebida.rendimiento() * self.inercia()) / self.peso()
  }
 }

object whisky{
  method rendimiento(dosis) = 0.9 ** dosis
}

object terere{
  method rendimiento(dosis) = 1.max(0.1 ** dosis) // nunca menos que 1
}

object cianuro{
  method rendimiento(dosis) = 0
}

object tito2{ 
  var bebida = whisky
  var dosis=0
  method peso() = 70
  method consumir(unaCantidad,unaBebida){
    dosis= unaCantidad
    bebida = unaBebida
  }
  method bebida() = bebida
  method velocidad() = bebida.rendimiendo(dosis)*490/self.peso()
}