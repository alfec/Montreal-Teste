# require_relative '../pages/empresas.rb'
# require_relative '../pages/tipo_fornecimento.rb'
#
# Quando("eu clicar no item Empresas do submenu Empresas") do
# 	@tipo_fornecimento = TipoFornecimento.new(@browser)
# 	@tipo_fornecimento.visitar_site
# 	@tipo_fornecimento.fazerLogin
# 	@tipo_fornecimento.paginaInicial
#
# 	@empresas = Empresas.newnew(@browser)
# 	@empresas.navegarBarraLateral
# end
#
# Entao("o sistema deve exibir a tela Listagem de Empresas") do
# 	@empresas.verificaPag
# end
#
# Quando("eu clicar no botão Filtrar da Listagem de Empresas") do
#     @tipo_fornecimento.encontrarFiltrar
# end
#
# Entao("deve aparecer três novos campos") do
# 	@empresas.verificaFiltrarEmpresas
# end
#
# Quando("eu preencher o campo Nome com {string}") do |nome|
# 	@empresas.preencherFiltrarNome(nome)
# end
#
# Quando("o campo CNPJ com {string}") do |cnpj|
# 	@empresas.preencherFiltrarCnpj(cnpj)
# end
#
# Quando("clico no botão {string}") do |string|
#     @tipo_fornecimento.clicarPesquisar
# end
#
# Entao("o sistema deve retornar o grid com todos os resultados filtrados") do
#     @empresas.validarFinalEmpresas
# end
