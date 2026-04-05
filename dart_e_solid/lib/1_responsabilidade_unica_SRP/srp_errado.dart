
/// S.O.L.I.D - Responsabilidade Única (SRP) - Correto
/// 
/// 1-  O princípio da responsabilidade única (SRP) 
/// 
/// UMA CLASSE DEVE SER RESPONSÁVEL POR APENAS UMA COISA, 


// FORMA ERRADA DE RESPONSABILIDADE ÚNICA (SRP)
class Pagamento {
  void Pagar() {
    print("Pagamento realizado com sucesso!");
    GerarComprovante();
  }
  // ESSE METODO NAO DIZ RESPEITO A PAGAMENTO, ELE TEM UMA RESPONSABILIDADE DIFERENTE,
  // ENTÃO ELE DEVE SER SEPARADO EM UMA CLASSE DIFERENTE,
  void GerarComprovante() {
    print("Comprovante gerado com sucesso!");
  }
  
}



void main() {
final Pagamento pagamentos = Pagamento();
  pagamentos.Pagar();
}