*** Settings ***
Documentation   Teste API Gorest: https://gorest.co.in/
Resource        ResourseAPI.robot
Suite Setup     Conectar a minha API

*** Test Cases ***
Create a new user
    Cadastro de usuário 
    Conferir o status code    200
    Conferir o reason    OK
    Conferir se o usuário foi cadastrado
Get user details
    Conferir o status code    200
    Conferir o reason    OK
    Conferir se retorna todos os dados corretos do usuario "&{usuario_1}"
    
# Update user details 
#     Atualizar informações do usuário  
#     Conferir se o usuário foi atualizado
# Delete user 
#     Deletar usuário
#     Conferir se o usuário foi deletado

# Requisitar o livro "15"
#     Conferir o status code    200
#     Conferir o reason    OK
#     Conferir se retorna todos os dados corretos do livro 15