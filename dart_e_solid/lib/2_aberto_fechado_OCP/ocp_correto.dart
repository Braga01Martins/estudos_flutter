/// S.O.L.I.D - Aberto/Fechado (OCP) - Correto
///
/// 1-  O princípio de aberto e fechado (OCP)
///
/// UMA CLASSE DEVE SER ABERTA PARA EXTENSÃO, MAS FECHADA PARA MODIFICAÇÃO,

// FORMA CORRETA DE ABERTO/FECHADO (OCP)
// CLASSE ABERTA PARA EXTENSÃO, MAS FECHADA PARA MODIFICAÇÃO,
// O QUE PERMITE ADICIONAR NOVAS FUNCIONALIDADES SEM MODIFICAR
// O CÓDIGO EXISTENTE, EVITANDO ERROS FUTUROS.

// criando uma classe abstrata para representar todos os tipos de funcionários.
abstract class IFuncionario {
  final bool _registrarPonto = true;
  void Trabalhar();
}

// NA heranca voce pode reutilizar o código da classe pai
class Porteiro extends IFuncionario {
  @override
  void Trabalhar() {
    print("Porteiro trabalhando...");
    print("Porteiro ${!_registrarPonto ? 'não' : ''}, Registrar ponto");
  }
}

// Na implementacao voce  e obrigado a implementar todos os métodos e atributos da interface, 
class Zelador implements IFuncionario {
  @override
  void Trabalhar() {
    print("Zelador trabalhando...");
    print("Zelador ${!_registrarPonto ? 'não' : ''}, Registrar ponto");
  }
  @override
  bool get _registrarPonto => false; // Implementação específica para Zelador
}


// a classe de producao nao precisa ser modificada para adicionar novos tipos de funcionários,
class Funcionario {
  void Trabalhar( IFuncionario funcionario) {
    funcionario.Trabalhar();
  }
}

void main() {
 final Funcionario zelador = Funcionario();
 zelador.Trabalhar(Zelador());

 final Funcionario porteiro = Funcionario();
  porteiro.Trabalhar(Porteiro());
 

}
