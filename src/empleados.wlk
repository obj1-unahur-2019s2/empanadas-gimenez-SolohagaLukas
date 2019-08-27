object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var resultado = 0
	
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() {
		resultado += sueldo
	}
	method gastar(cuanto){
		resultado -= cuanto
	}
	method totalDinero(){
		return resultado.max(0)
		/*if (resultado >= 0){
			return resultado
		}else{
			return 0
		}
		*/
	}
	method totalDeuda(){
		return -resultado.min(0)
		/*
		 if (resultado <= 0){
			return resultado.abs()
		} else{
			return 0
		}
		*/
	}
	
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
	}
	method totalCobrado() {
		return totalCobrado
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
}
}


//method pagarA( empleado ) { dinero -= empleado.sueldo() }