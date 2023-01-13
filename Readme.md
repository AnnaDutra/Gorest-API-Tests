Automação de testes da API [GoRest](https://gorest.co.in/) nos endpoints do CRUD de usuários.

### Plano de Testes

| Funcionalidades | Comportamento esperado | Verificações
|---|---|---|
| Cadastrar usuário | Ao informar o nome, email, gênero e status o sistema deve cadastrar o usuário | Todos os campos devem ser obrigatórios e o email não pode ser associado a algum outro usuário existente |
| Requisitar usuário | O sistema deve trazer todos os dados do usuário solicitado | O usuário precisa estar cadastrado no sistema | 
| Editar email do usuário | O sistema deve alterar o email de um usuário | O campo deve ser obrigatório e não pode ser associado a algum outro usuário existente | 
| Excluir usuário | O sistema deve excluir um usuário | O usuário precisa estar cadastrado no sistema | 
