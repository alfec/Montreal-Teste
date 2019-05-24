require 'page-object'
require 'watir'

class Empresas 
	include PageObject
	
  	def	navegarBarraLateral()
		within(:xpath, '//*[@id="menuEmpresa"]/a/span[1]') do
			find(:xpath, '//*[@id="menuEmpresa"]/a/span[1]').click
			find(:xpath, '//*[@id="subMenuEmpresa"]/a').click
		end
	end
	
	def verificaPag
		page.has_content?('Listagem de Empresa')
	end
	
	def verificaFiltrarEmpresas
		page.has_content?('Nome')
		page.has_content?('CNPJ')
		page.has_content?('Situação')
		page.has_content?('Pesquisar')
	end
	
	def preencherFiltrarNome(nome)
		fill_in('razaoSocial', with: "#{nome}")
	end
	
	def preencherFiltrarCnpj(cnpj)
		fill_in('cnpj', with: "#{cnpj}")
	end
	
	def preencherFiltrarSituacao
		within(:xpath, '//*[@id="status"]') do
		  select('Ativo', :from => 'status')
		end
	end	
	
	def validarFinalEmpresas
		page.has_content?('Nome')
	end
end
