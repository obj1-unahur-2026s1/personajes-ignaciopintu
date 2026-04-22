/*
  EJEMPLO DE LA LECCIÓN 1 (Copia local)
*/

object pepita {
    var energia = 100

    method volar(kms) {
        energia -= (kms * 10)
    }

    method comer(gramos) {
        energia += (gramos * 4)
    }

    method energia() = energia
}

object entrenador {
    method entrenar(ave) {
        ave.volar(5)
        ave.comer(20)
    }
}
