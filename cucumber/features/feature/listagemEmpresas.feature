#language: pt

Funcionalidade: Listagem de Empresas

SENDO usuario Administrador
EU QUERO poder ver as Listagem de Empresas
PARA poder filtrar e visualizar melhor a listagem delas

Contexto: Tela de Login
    Dado que estou na inicial do sistema

    Cenario: Acesso a tela Listagem de empresa
		Quando eu clicar no item Empresas do submenu Empresas
		Entao o sistema deve exibir a tela Listagem de Empresas
	
	Cenario: Funcionalidade Filtrar
		Quando eu clicar no botão Filtrar
		Entao deve aparecer três novos campos  
		E um novo botão "Pesquisar"
		
	Cenario: Preencher os campos da funcionalidade Filtrar
		Quando eu preencher o campo Nome com "teste"
		E o campo CNPJ com "33.664.564/0001-88"
		E clico no botão "Pesquisar"
		Entao o sistema deve retornar o grid com todos os resultados filtrados	