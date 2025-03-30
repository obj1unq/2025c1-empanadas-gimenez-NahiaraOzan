//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var dinero = 0
    var deuda = 0

    method sueldoActual() {
        return sueldo
    }

    method registrarCobro(_sueldo) {
        dinero = dinero + _sueldo
        if (deuda > dinero) {
            deuda =  deuda - _sueldo
            dinero = 0
            }else{
            dinero = dinero - deuda
            deuda = 0
        }
    }
    
    method nuevoSueldo(_nuevoSueldo) {
        sueldo = _nuevoSueldo
    }

    method dinero() {
        return  dinero 
    }

    method gastar(_gasta) {
        if (dinero > 0) {
            deuda = deuda + (_gasta - dinero)
            dinero = 0
            }else{
            deuda = deuda + _gasta

        }
    }

    method deuda() {
        return deuda
    }
    
}

object baigorria {
    var cantEmpanadasVendidas = 0
    const valorDeEmpanada = 15
    var totalCobrado = 0
    
    method sueldoActual() {
        return cantEmpanadasVendidas * valorDeEmpanada    
    }

    method registrarCobro(_sueldoActual) {
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
        empleado.registrarCobro(empleado.sueldoActual())
    }

    method fondoActual() {
        return fondoActual
    }
}
