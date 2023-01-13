*** Settings ***
Documentation   Teste API Gorest: https://gorest.co.in/
Resource        Resourse_API.robot
Suite Setup     Conectar a minha API

*** Test Cases ***
Crud de Usuários
    Cadastrar usuário   
    Requisitar usuário 
    Editar email do usuario para "joana100@email.com"
    Deletar usuário


