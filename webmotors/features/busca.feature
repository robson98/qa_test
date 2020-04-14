#language:pt
Funcionalidade: Busca
    Para que eu possa encontrar o que preciso
    Sendo um usuário 
    Quero poder realizar buscas por filtros
    @marca
    Cenario: Realizar busca por marca

        Dado acesso a pagina webmotors
        E entro na tela de ofertas
        Quando pesquiso pela marca "honda"
        Entao devo ver os resultados retornados para marca "honda"
    @modelo
    Cenario: Realizar busca por modelo

        Dado acesso a pagina webmotors
        E entro na tela de ofertas
        Quando pesquiso pela marca "honda"
        E escolho o modelo "city"
        Entao devo ver os resultados retornados para modelo "city"
    @versao
    Cenario: Realizar busca por versao

        Dado acesso a pagina webmotors
        E entro na tela de ofertas
        Quando pesquiso pela marca "honda"
        E escolho o modelo "city"
        E escolho a versão "1.5 exl 16v flex 4p manual"
        Entao devo ver os resultados retornados para versão "1.5 exl 16v flex 4p manual"