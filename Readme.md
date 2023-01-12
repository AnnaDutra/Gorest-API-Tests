Automação de testes da API [GoRest](https://gorest.co.in/) nos endpoints do CRUD de usuários.

## Plano de testes

| Funcionalidades | Comportamento esperado | Verificações
|---|---|---|
| Cadastrar usuário | Ao informar o nome, email, gênero e status o sistema deve cadastrar o usuário |  Tooos os campos devem ser obrigatórios e o email não pode ser usado no cadastro de outro usuário |
| Requisitar usuário | O sistema deve trazer todos os dados de um usuário específico | | 
| Editar email do usuário | O sistema deve alterar o email de um usuário | O campo deve ser obrigatório e não pode ser associado a algum outro usuário existente | 
| Excluir usuário | O sistema deve excluir um usuário |  | 
