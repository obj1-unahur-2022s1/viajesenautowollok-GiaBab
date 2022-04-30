/* REMISERA OK */
object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms * 1.20
	}
}

object mariela {
/* Esto esta muy bien */
	method precioViaje(cliente, kms) { 
		return (cliente.precioPactadoPorKm() * kms).max(50)
	}
}

object juana {
	method precioViaje(cliente, kms) = if(kms <= 8){100} else {200}
}

object lucia {
    var remplazando
  
    method estaReemplazandoA(remisero){
    	remplazando = remisero
  	}
  	method precioViaje(cliente, kms){
    	return remplazando.precioViaje(cliente, kms)
  	}
}