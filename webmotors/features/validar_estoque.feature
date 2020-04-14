#language:pt
Funcionalidade: Validar Estoque
    Para que eu possa encontrar um veículo
    Sendo um usuário de uma determinada loja
    Quero achar o veícuo em estoque
    @busca_estoque
    Cenario: Buscar em estoque de loja

        Dado acesso estoque de determinada loja
        Quando pesquiso pela marca "honda" na loja
        Entao devo visualizar veiculo da marca "honda"