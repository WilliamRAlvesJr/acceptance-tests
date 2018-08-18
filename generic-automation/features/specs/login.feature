#language:pt

Funcionalidade: Login na página
	Descrição

	Cenário: Realiza login
		Dado que estou na página de login
		E possuo os dados:
			| nome	| user@phptravels.com |
			| senha | demouser    			  |
		Quando submeter o formulário
		Então devo estar logado







# Funcionalidade: Busca no google
# 	Descrição
#
# 	Cenário: Cadastro simplificado
# 		Dado que estou na página principal do google
# 		Quando realizo uma busca por "google"
# 		Então sou direcionado para minha busca


# Funcionalidade: Cadastro
# 	Sendo um usuário que possui muitas tarefas
# 	Posso fazer meu cadastro no sistema
# 	Para poder gerenciar as minhas tarefas
#
# 	Contexto: Cadastro
# 		Dado que eu acessei a página de cadastro
#
# 	Cenário: Cadastro simplificado
#     E possuo os seguintes dados:
#       | Nome  | Fernando     				|
#       | Email | fernando@qaninja.io |
#       | Senha | 123456						  |
#     Quando faço o meu cadastro
#     Então sou redirecionado para o meu painel de tarefas
#
# 	Esquema do Cenário: Tentativa de cadastro
# 		E possuo os seguintes dados:
# 			| Nome   | <nome>   |
# 			| Email  | <email>  |
# 			| Senha  | <senha>  |
# 		Quando faço o meu cadastro
# 		Então devo ver uma mensagem de alerta "<alerta>"
#
# 			Exemplos:
# 			  | nome 		 | email 							 | senha  | alerta																			|
# 				|	Fernando | fernando@qaninja.io | 12345  | Sua senha deve ter pelo menos 6 caracteres. |
# 				|	Fernando | fernando@qaninja.io |        | Informe uma senha.													|
# 				|	Fernando |										 | 123456 | Email é obrigatório. 											  |







  # Cenário: Email não enviado
  #   Dado que eu acessei a página de cadastro
  #   E possuo os seguintes dados:
  #     | Nome  | Fernando |
  #     | Email |          |
  #     | Senha | 123456   |
  #   Quando faço o meu cadastro
  #   Então devo ver uma mensagem de alerta 'Email é obrigatório.'
	#
  # Cenário: Senha não informada
  # 	Dado que eu acessei a página de cadastro
  # 	E possuo os seguintes dados:
  #   	| Nome  | Fernando 			      |
  #     | Email | fernando@qaninja.io |
  #     | Senha |                     |
  #   Quando faço o meu cadastro
  #   Então devo ver uma mensagem de alerta 'Informe uma senha.'
	#
  # Cenário: Mínimo de caracteres para senha
  #   Dado que eu acessei a página de cadastro
  #   E possuo os seguintes dados:
  #     | Nome  | Fernando   				  |
  #     | Email | fernando@qaninja.io |
  #     | Senha | 12345							  |
  #   Quando faço o meu cadastro
  #   Então devo ver uma mensagem de alerta 'Sua senha deve ter pelo menos 6 caracteres.'
