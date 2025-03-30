//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var montoCobrado = 0

    method sueldoActual() {
        return sueldo
    }
    method montoCobrado(_sueldo) {
        montoCobrado = _sueldo
    }
    method nuevoSueldo(_nuevoSueldo) {
        sueldo = _nuevoSueldo
    }
}

object baigorria {
    var cantEmpanadasVendidas = 0
    const valorDeEmpanada = 15
    var  montoCobrado = 0
    var totalCobrado = 0
    
    method sueldoActual() {
        return cantEmpanadasVendidas * valorDeEmpanada    
    }

    method montoCobrado(_sueldoActual) {
        montoCobrado = _sueldoActual
        totalCobrado = totalCobrado + _sueldoActual
        cantEmpanadasVendidas = 0 
    }

    method cantEmpanadasVendidas(_cantEmpanadasVendidas) {
        cantEmpanadasVendidas = cantEmpanadasVendidas + _cantEmpanadasVendidas
    }  

    method totalCobrado() {
        return  totalCobrado 
    }
}
object gimenez {
    var fondoActual = 300000   
    
    method pagarSueldo(empleado) {
        fondoActual = fondoActual - empleado.sueldoActual()
        empleado.montoCobrado(empleado.sueldoActual())
    }

    method fondoActual() {
        return fondoActual
    }
}