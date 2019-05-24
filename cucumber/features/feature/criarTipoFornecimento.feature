#language: pt

Funcionalidade: Tipo Fornecimento

SENDO usuario Administrador
EU QUERO poder ver os Tipos Fornecimentos
PARA poder filtrar e visualizar melhor a listagem deles

Contexto: Tela Listagem Tipo Fornecimento
    Dado que estou na inicial do sistema

    Cenario: Acesso a tela Listagem Tipo Fornecimento
		Quando eu clicar no item Tipo Fornecimento do submenu Empresas
		Entao o sistema deve exibir a tela Listagem Tipo Fornecimento
	
	Cenario: Funcionalidade Filtrar
		Quando eu clicar no botão Filtrar
		Entao deve aparecer dois novos campos  
		E um novo botão "Pesquisar"
		
	Cenario: Preencher os campos da funcionalidade Filtrar
		Quando eu preencher o campo Descrição com "teste"
		E o campo CNAE com "123456"
		E clico no botão "Pesquisar"
		Entao o sistema deve retornar o grid com todos os resultados filtrados	