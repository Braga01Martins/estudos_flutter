
/// S.O.L.I.D - Responsabilidade Única (SRP) - Correto
/// 
/// 1-  O princípio da responsabilidade única (SRP) 
/// 
/// UMA CLASSE DEVE SER RESPONSÁVEL POR APENAS UMA COISA, 


// FORMA CORRETA DE RESPONSABILIDADE ÚNICA (SRP)
class Pagamento {
  void Pagar() {
    print("Pagamento realizado com sucesso!");
    Comprovantes.GerarComprovante();
  }
}

//  E NECESSARIO SEPARAR AS RESPONSABILIDADES EM CLASSES DIFERENTES, 
//PARA QUE CADA CLASSE TENHA APENAS UMA RAZÃO PARA MUDAR, 
//O QUE FACILITA A MANUTENÇÃO E EVITA ERROS FUTUROS.
class Comprovantes {
  static void GerarComprovante() {
    print("Comprovante gerado com sucesso!");
  }
}

void main() {
final Pagamento pagamentos = Pagamento();
  pagamentos.Pagar();
}