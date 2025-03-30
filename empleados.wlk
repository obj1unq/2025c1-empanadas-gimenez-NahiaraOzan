//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var montoCobrado = 0

    method sueldo() {
        return sueldo
    }
    method montoCobrado(_sueldo) {
        montoCobrado = sueldo
    }
    method nuevoSueldo(_nuevoSueldo) {
        sueldo = _nuevoSueldo
    }
}

object baigorria {
    var cantEmpanadasVendidas = 0
    const valorDeEmpanada = 15
    var  montoCobrado = 0
    
    method sueldo() {
        return cantEmpanadasVendidas * valorDeEmpanada    
    }

    method montoCobrado(sueldo) {
        montoCobrado = sueldo
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
        empleado.montoCobrado(empleado.sueldo())
    }
}