/*
 * CLIENTES OK
 */

object ludmila {
	
	method precioPactadoPorKm()= 18
}

object anaMaria {
	var ecoEstable = true
	/*  Se podria haber hecho de esta manera también
	 */
	method ecoEstable(valor) {ecoEstable=valor }
	method noEcoEstable(){ ecoEstable=false}
	method esEcoEstable(){ ecoEstable=true}
	
	method precioPactadoPorKm() = if(ecoEstable){30} else {25}
	
}

object teresa {
	var disPagar = 22
	
	method cambioPacto(nuevo){disPagar = nuevo}
	
	method precioPactadoPorKm()= disPagar
}

object melina {
	var trabajaPara

	method estaTrabajandoPara(cliente){
    	trabajaPara = cliente
  	}
	method precioPactadoPorKm(){
    	return trabajaPara.precioPactadoPorKm()-3
  	}
}