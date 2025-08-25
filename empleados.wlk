object galvan {

  var sueldo =  15000
  var dinero = 0
  var deuda = 0

  method sueldo() = sueldo
  method dinero() = dinero
  method deuda() = deuda  
  method sueldo(nuevoSueldo) {
    sueldo = nuevoSueldo
  }
  method cobrar() {
    if (sueldo >= deuda) {
      dinero = sueldo - deuda
      deuda = 0
    }
    else
      deuda = deuda - sueldo
  }
  method gastar(_dinero) {
    if (dinero < _dinero ) {
      deuda = deuda + (_dinero - dinero)
      dinero = 0
    }
    else
      dinero = dinero - _dinero
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