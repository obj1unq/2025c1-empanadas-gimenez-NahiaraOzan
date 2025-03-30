//Escribir aqui los objetos
object galvan {
    var sueldo = 15000

    method sueldo() {
        return sueldo
    }
    method totalCobrado() {
        return sueldo
    }
    method nuevoSueldo(_nuevoSueldo) {
        sueldo = _nuevoSueldo
    }
}

object baigorria {
    var cantEmpanadasVendidas = 0
    const valorDeEmpanada = 15
    var  totalCobrado = 0
    
    method sueldo() {
        return cantEmpanadasVendidas * valorDeEmpanada    
    }

    method totalCobrado() {
        totalCobrado = totalCobrado + sueldo()
        cantEmpanadasVendidas = 0  
    }

    method cantEmpanadasVendidas(_cantEmpanadasVendidas) {
        cantEmpanadasVendidas = cantEmpanadasVendidas + _cantEmpanadasVendidas
    }  
}
object gimenez {
    var fondoSueldos = 300000   
    
    method pagarSueldo(empleado) {
        fondoSueldos = fondoSueldos - empleado.sueldo()
        empleado.totalCobrado()
    }
}