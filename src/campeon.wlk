import oleadas.*

class Campeon {
	var puntosDeDanio = 0
	const puntosDeVidaPropio
	
	const puntosAtaquePropio
	
	const itemsEquipados = []
	
	method puntosDeDanio(unaOleada) {
		puntosDeDanio =+ unaOleada.danio()
	}
	
	method equiparItem(unItem) {
		itemsEquipados.add(unItem)
		}
	
	method desequiparItem(unItem) {
		itemsEquipados.remove(unItem)
     	
	}
    method puntosDeDanio() = puntosDeDanio
    
    method puntosDeVidaTotal()  = puntosDeVidaPropio + itemsEquipados.sum{item => item.puntosDeVidaQueOtorga(self)}
 
    method puntosDeAtaqueTotal() = puntosAtaquePropio + itemsEquipados.sum{item => item.puntosDeAtaqueQueOtorga(self)}
      
    method batalla(unaOleada){
    	self.puntosDeDanio(unaOleada)
    
    }
}
