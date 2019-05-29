require_relative '../pages/tipo_fornecimento.rb'

Dado("que estou na inicial do sistema") do
	@tipo_fornecimento = TipoFornecimento.new(@browser)
	@tipo_fornecimento.visitar_site
	@tipo_fornecimento.fazerLogin
	@tipo_fornecimento.paginaInicial
end

Quando("eu clicar no item Tipo Fornecimento do submenu Empresas") do
    @tipo_fornecimento.navegarBarraLateral
end

Entao("o sistema deve exibir a tela Listagem Tipo Fornecimento") do
    @tipo_fornecimento.verificaPag
end

Quando("eu clicar no botão Filtrar") do
    @tipo_fornecimento.encontrarFiltrar
end

Entao("deve aparecer dois novos campos") do
    @tipo_fornecimento.verificaFiltrarFornecimento
end

Entao("um novo botão {string}") do |string|
    @tipo_fornecimento.verificaFiltrarFornecimento
end

Quando("eu preencher o campo Descrição com {string}") do |descricao|
    @tipo_fornecimento.preencherDescricao(descricao)
end

Quando("o campo CNAE com {string}") do |cnae|
    @tipo_fornecimento.preencherCnae(cnae)                                     
end

Quando("clico no botão {string}") do |string|
    @tipo_fornecimento.clicarPesquisar
end

Entao("o sistema deve retornar o grid com todos os resultados filtrados") do
    @tipo_fornecimento.validaFinal
end
