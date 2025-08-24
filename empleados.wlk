object galvan {

  var sueldo =  15000

  method sueldo() = sueldo
  method sueldo(nuevoSueldo) {
    sueldo = nuevoSueldo
  }
}

object baigorria {

  var sueldo = 0

  method sueldo() = sueldo
  method vender(cantidadDeEmpanadas) {
    sueldo = sueldo + cantidadDeEmpanadas * 15
  }
}

object gimenez {

  var fondo = 300000

  method fondo() = fondo
  method pagarSueldo(empleado) {
    fondo = fondo - empleado.sueldo()
  }
}