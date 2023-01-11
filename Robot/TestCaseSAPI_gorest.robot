*** Settings ***
Documentation   Teste API Gorest: https://gorest.co.in/
Resource        Resourse_API.robot
Suite Setup     Conectar a minha API

*** Test Cases ***
Users
    Cadastrar usuário   
    Requisitar usuário 
    Deletar usuário


