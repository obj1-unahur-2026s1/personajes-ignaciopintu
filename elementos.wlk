
// ELEMENTOS
object castillo {
    var     defensa = 150
    method  altura() = 20

    method  recibirAtaque(_potenciaAtaque) {
        defensa = (defensa - _potenciaAtaque).max(0)
        }
    method  valorOtorgado() = defensa / 5
    method  recibirTrabajo() {defensa = (defensa + 20).min(200)}
}
object aurora {
    var     estaViva = true
    method  altura() = 1
    method  recibirAtaque(_potenciaAtaque) {
        if (_potenciaAtaque >= 10) {estaViva = false}
    }
    method estaViva() = estaViva
    method valorOtorgado() = 15
    method recibirTrabajo() { /* nada */ }
}
object tipa {
    var altura = 8
    method  altura() = altura
    method crecer() {altura += 1}
    method recibirAtaque(_potenciaAtaque) {/* nada */ }
    method valorOtorgado() = 2 * altura
    method recibirTrabajo() {self.crecer()}
}
object ningunElemento {
    method altura() =  0
    method recibirAtaque(_potenciaAtaque) { /* nada */ }
    method recibirTrabajo() { /* nada */ }
    method valorOtorgado() { /* nada */ }
}