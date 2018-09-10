#language:pt

Funcionalidade: Login na página
	Descrição

	Cenário: Realiza login
		Dado que estou na página de login
		E possuo os dados:
			| nome	| user@phptravels.com |
			| senha | demouser    	      |
		Quando submeter o formulário
		Então devo estar logado

