object galvan {

  var sueldo =  15000
  var totalCobrado = 0

  method sueldo() = sueldo
  method sueldo(nuevoSueldo) {
    sueldo = nuevoSueldo
  }
  method cobrar() {
    totalCobrado = totalCobrado + sueldo
  }
}

object baigorria {

  var sueldo = 0
  var totalCobrado = 0

  method sueldo() = sueldo
  method totalCobrado() = totalCobrado
  method vender(cantidadDeEmpanadas) {
    sueldo = sueldo + cantidadDeEmpanadas * 15
  }
  method cobrar() {
    totalCobrado = totalCobrado + sueldo
    sueldo = 0
  }
}

object gimenez {

  var fondo = 300000

  method fondo() = fondo
  method pagarSueldo(empleado) {
    fondo = fondo - empleado.sueldo()
    empleado.cobrar()
  }
}