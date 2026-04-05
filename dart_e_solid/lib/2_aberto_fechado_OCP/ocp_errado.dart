/// S.O.L.I.D - Aberto/Fechado (OCP) - Correto
///
/// 1-  O princípio de aberto e fechado (OCP)
///
/// UMA CLASSE DEVE SER ABERTA PARA EXTENSÃO, MAS FECHADA PARA MODIFICAÇÃO,

// FORMA INCORRETA DE ABERTO/FECHADO (OCP)
// CLASSE FECHADA PARA EXTENSÃO, MAS ABERTA PARA MODIFICAÇÃO,
// O QUE PODE CAUSAR PROBLEMAS FUTUROS, POIS SE PRECISAR ADICIONAR
//NOVAS FUNCIONALIDADES, VAI PRECISAR MODIFICAR
class Funcionario {
  void Trabalhar() {
    print("Zelador trabalhando...");
  }
}

class Zelador extends Funcionario {}

class Porteiro extends Funcionario {}

void main() {
 final Zelador zelador = Zelador();
 final Porteiro porteiro = Porteiro();
 zelador.Trabalhar();
 porteiro.Trabalhar();
}
