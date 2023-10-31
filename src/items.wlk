import campeon.*

class Item {
	const peso
	
	method puntosDeVidaQueOtorga(unCampeon) = if(peso <= 500) 20 else 40
	
	method puntosDeAtaqueQueOtorga(unCampeon) = if(peso <= 500) 10 else 5
}

class AnilloDeDoran inherits Item{
	
	override method puntosDeVidaQueOtorga(unCampeon){
		return super(unCampeon) + 60
	}
	
	override method puntosDeAtaqueQueOtorga(unCampeon){
		return super(unCampeon) + 15
	}
}

class TomoAmplificador inherits Item{
	
	override method puntosDeVidaQueOtorga(unCampeon){
		return super(unCampeon) + (25/100)*unCampeon.puntosDeDanio()
	}
	
	override method puntosDeAtaqueQueOtorga(unCampeon){
		return super(unCampeon) + (10/100)*unCampeon.puntosDeDanio()
	}
	
}

class SombreroDeRabadon inherits TomoAmplificador{
	
	override method puntosDeVidaQueOtorga(unCampeon){
		return 2*super(unCampeon)
	}
	
	override method puntosDeAtaqueQueOtorga(unCampeon){
		return super(unCampeon)+2
	}
}