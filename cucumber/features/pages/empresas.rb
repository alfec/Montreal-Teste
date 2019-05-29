# require 'page-object'
# require 'watir'
#
# class Empresas
# 		include PageObject
#
# 	  def	navegarBarraLateral()
# 			browser.li(:id,"menuEmpresa").click
# 			browser.li(:id, "subMenuEmpresa").click
# 		end
#
# 		def verificaPag
# 			browser.text.include?('Listagem de Empresa')
# 		end
#
# 		def verificaFiltrarEmpresas
# 			browser.text.include?('Nome')
# 			browser.text.include?('CNPJ')
# 			browser.text.include?('Situação')
# 			browser.text.include?('Pesquisar')
# 		end
#
# 		def preencherFiltrarNome(nome)
# 			browser.text_field(name: "razaoSocial").set nome
# 		end
#
# 		def preencherFiltrarCnpj(cnpj)
# 			browser.text_field(name: "cnpj").set cnpj
# 		end
#
# 		def preencherFiltrarSituacao
# 			browser.selected_options(:otpion, "Todos")
# 			# within(:xpath, '//*[@id="status"]') do
# 			#   select('Ativo', :from => 'status')
# 			#end
# 		end
#
# 		def validarFinalEmpresas
# 			browser.text.include?('Nome')
# 		end
# end
