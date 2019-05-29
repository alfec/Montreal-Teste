require 'page-object'
require 'watir'

class TipoFornecimento

	include PageObject

	def visitar_site
		@browser.goto 'http://montreal.conformedata.dynu.net/conformedata-montreal/login/auth'
	end

	def fazerLogin
		#@browser.text_field(:name => "pass")
		#@browser.find_element(:id, "j_username").send_keys "administrador@montreal.com.br"
		#@browser.text_field('j_username', with: 'administrador@montreal.com.br')
		#fill_in 'j_password', with: '123'
		#find_button('Logar').click
		email = browser.text_field(name: "j_username").set("administrador@montreal.com.br")
		password = browser.text_field(name: "j_password").set 123
		enter = browser.button(:value, "Logar").click
	end

	def paginaInicial
		#page.has_content?('logout')
		confirmacao = browser.button(visible_text: "logout")
	end

	def	navegarBarraLateral

		# within(:xpath, '//*[@id="menuEmpresa"]/a/span[1]') do
		# 	find(:xpath, '//*[@id="menuEmpresa"]/a/span[1]').click
		# 	find(:xpath, '//*[@id="menuTipoFornecimento"]/a').click
		# end

		#press1= browser.button(:text, "Empresas").click
		#press2= browser.button(:text, "Tipo Fornecimento").click
		#browser.link(:href, "/conformedata-montreal/documento/index").click
		#browser.link(:href, "/conformedata-montreal/tipoFornecimento/index").click
		browser.li(:id,"menuEmpresa").click
		browser.li(:id, "menuTipoFornecimento").click
	end

	def verificaPag
		browser.text.include? 'Listagem de Tipo Fornecimento'
		#confirmacao = browser.button(visible_text: "Listagem de Tipo Fornecimento")
	end

	def encontrarFiltrar
		browser.link(class: 'collapse-link btn btn-info btn-xs.html').click
		#encontrar = browser.button(text: "Filtrar").click
	end

	def verificaFiltrarFornecimento
		# page.has_content?('Descrição')
		# page.has_content?('CNAE')
		# page.has_content?('Pesquisar')
		browser.text.include?('Descrição')
		browser.text.include?('CNAE')
		browser.text.include?('Pesquisar')
	end

	def preencherDescricao(x)
		preencher = browser.text_field(:id, "descricao").set x
	end

	def preencherFiltrarCnae(cnae)
		preencher = browser.text_field(:id, "cnae").set cnae
	 	#fill_in('cnae', with: "#{cnae}")
	end

	def clicarPesquisar
		#find_button('Pesquisar').click
		browser.button(:text, "Pesquisar").click
	end

	def validaFinal
		browser.text.include?('Descrição')
	end
end
