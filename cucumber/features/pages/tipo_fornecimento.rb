require 'page-object'
require 'watir'

class TipoFornecimento

	include PageObject
	
	def visitar_site
		@browser.goto 'http://montreal.conformedata.dynu.net/conformedata-montreal/login/auth'
	end	
	
	def fazerLogin
		fill_in 'j_username', with: 'administrador@montreal.com.br'
		fill_in 'j_password', with: '123'
		find_button('Logar').click
	end
		
	def paginaInicial
		page.has_content?('logout')
	end
	
	def	navegarBarraLateral
		within(:xpath, '//*[@id="menuEmpresa"]/a/span[1]') do
			find(:xpath, '//*[@id="menuEmpresa"]/a/span[1]').click
			find(:xpath, '//*[@id="menuTipoFornecimento"]/a').click
		end
	end
	
	def verificaPag
		page.has_content?('Listagem de Tipo Fornecimento')
	end
	
	def encontrarFiltrar
		find_button('Filtrar').click
	end
	
	def verificaFiltrarFornecimento
		page.has_content?('Descrição')
		page.has_content?('CNAE')
		page.has_content?('Pesquisar')
	end
	
	def preencherFiltrarDescricao(descricao)
		fill_in('descricao', with: "#{descricao}")
	end
	
	def preencherFiltrarCnae(cnae)
		fill_in('cnae', with: "#{cnae}")
	end
	
	def clicarPesquisar
		find_button('Pesquisar').click
	end
	
	def validaFinal
		page.has_content?('Descrição')
	end	
end