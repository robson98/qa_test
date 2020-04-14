Dado("acesso a pagina webmotors") do
    visit "https://www.webmotors.com.br/"
end

Dado("acesso estoque de determinada loja") do
    visit "https://www.webmotors.com.br/carros/estoque?tipoveiculo=carros&idrevendedor=3834764"
    sleep 3
end

E ("entro na tela de ofertas") do
    find(:xpath, "//a[@href='/carros/estoque?idcmpint=t1:c17:m07:webmotors:busca::verofertas']").click
end 

E ("escolho o modelo {string}") do |modelo|
    find(:xpath, "//*[@id='root']/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[2]").click
    @modelo = modelo
    visit "https://www.webmotors.com.br/carros/estoque/#{@marca}/#{modelo}"
end

E ("escolho a versão {string}") do |versao|
    find(:xpath, "/html/body/div[1]/main/div[1]/div[2]/div/div[1]/div[2]/div[2]/div/form/div[3]/div[2]/div[2]/div[3]").click
    @versao = versao.gsub(" ","-")
    versao.gsub(".","")
    visit "https://www.webmotors.com.br/carros/estoque/#{@marca}/#{@modelo}/#{versao}"
    sleep 15
end

Quando("pesquiso pela marca {string}") do |marca|
    @marca = marca.downcase
    visit "https://www.webmotors.com.br/carros/estoque/#{marca}" 
end

Quando("pesquiso pela marca {string} na loja") do |marca|
    page.find(:xpath,"//*[text()='#{marca}']").click
end

Entao("devo ver os resultados retornados para marca {string}") do |marca|
    catal_veic = page.has_css?(".ContainerCardVehicle ")
    expect(catal_veic). to be true
    page.save_screenshot('log/resultados_marca.png')
end

Entao("devo ver os resultados retornados para modelo {string}") do |modelo|
    mensagem = find(".title-search")
    expect(mensagem.text).to include modelo.capitalize  
    page.save_screenshot('log/resultados_modelo.png')
end

Entao("devo ver os resultados retornados para versão {string}") do |versao|
    mensagem = find(".title-search")
    expect(mensagem.text.downcase).to include versao  
    page.save_screenshot('log/resultados_versao.png')
end
  
Entao("devo visualizar veiculo da marca {string}") do |marca|
    mensagem= find(:xpath,"//*[@id='root']/main/div[1]/div[3]/ol/li[3]")
    expect(mensagem.text.downcase).to include marca  
    page.save_screenshot('log/estoque_loja.png')
end