object pepe {
    var categoria = gerente  //ATRIBUTOS - REFERENCIAS APUNTANDO AL OBJETO PEPE y al otro objeto (pepe-gerente)
    var bonoResultado = nuloBonoResultados
    var bonoPresentismo = nuloBonoPresentismo
    var faltas = 0

    method categoria(_categoria) { //SETTER
        categoria = _categoria
    }

    method sueldo(_bonoResultado, _bonoPresentismo) {
        return categoria.neto() + bonoResultado + bonoPresentismo
    }
    method bonoResultado(_bonoResultado){
            bonoResultado = _bonoResultado
    }
    
    method bonoPresentismo (_bonoPresentismo){
            bonoPresentismo = _bonoPresentismo
    }
    method neto(){
        return categoria.neto()
    }
    method faltas (_faltas){
        faltas = _faltas
    }
    
    method faltas() {
        return faltas 
    }


    method extraResultado(){
        return bonoResultado.valor(self.neto())
    }
}

object gerente {
    method neto() {
        return 15000
    }
}

object cadete {
    method neto() {
        return 20000
    }
}

// ### Bono por resultados
object porcentaje {
    method valor(neto) {
        return neto * 0.1
    }
}

object montoFijo {
    method valor(neto) {
        return 800
    }
}

object nuloBonoResultados {
    method valor(neto) {
        return 0
    }
}



//  Bono por presentismo

object presentismoNormal {
    method valor(faltas) {
        if (faltas == 0) {
            return 2000
        } else if (faltas == 1) {
            return 1000
        } else {
            return 0
        }
    }
}

object ajuste {
    method valor(faltas) {
        if (faltas == 0) {
            return 100
        } else {
            return 0
        }
    }
}

object demagogico {
    method valor(neto) {
        if (neto < 18000) {
            return 500
        } else {
            return 300
        }
    }
}

object nuloBonoPresentismo {
    method valor(neto) {
        return 0
    }
}
