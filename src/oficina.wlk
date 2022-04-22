import remiseras.*
import Cliente.*

object oficina {
  	var primerRemisera
  	var segundoRemisera
  	var intercambio
  
  	method asignarRemiseras(remisera1, remisera2){
    	primerRemisera = remisera1
    	segundoRemisera = remisera2
  	}
  	method remiseraPrimeraOpcion() = primerRemisera
  	method remiseraSegundaOpcion() = segundoRemisera
  
  	method cambiarPrimerRemiserarPor(remisera){
    	primerRemisera = remisera
  	}
  	method cambiarSegundoRemiseraPor(remisera){
    	segundoRemisera = remisera
  	}
  	method intercambiarRemiseras(){
 		intercambio = segundoRemisera
    	self.cambiarSegundoRemiseraPor(primerRemisera)
    	self.cambiarPrimerRemiserarPor(intercambio)
  	}
  	method remiseraElegidaParaViaje(cliente, kms){
    	if((primerRemisera.precioViaje(cliente, kms) - segundoRemisera.precioViaje(cliente, kms))<30){
      		return primerRemisera
    	}
    	else{return segundoRemisera}
  	}
}