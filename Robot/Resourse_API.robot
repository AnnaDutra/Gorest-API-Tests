*** Settings ***
Documentation   Teste API Gorest: https://gorest.co.in/
Library    RequestsLibrary
Library    Collections

*** Variables ***
${URL_API}        https://gorest.co.in/public/v2/
&{usuario_1}      name=joana
...               email=joana17@mail.com
...               gender=female
...               status=active

*** Keywords ***
Conectar a minha API
    Create Session    gorest    ${URL_API}
    ${HEADERS}     Create Dictionary    content-type=application/json    Authorization=Bearer 0b00f3747ddbfa804815cec907da690ac5ef699fffebfaa7a7f9e4b56f66030a
    Set Suite Variable    ${HEADERS}
Cadastrar usuário  
    ${RESPOSTA_POST}    POST On Session    gorest    users
    ...                            data={"name": "${usuario_1.name}","email":"${usuario_1.email}","gender":"${usuario_1.gender}","status":"${usuario_1.status}" }
    ...                            headers=${HEADERS}
    Log            ${RESPOSTA_POST.text}
    Set Test Variable    ${RESPOSTA_POST}

    Should Be Equal As Strings    ${RESPOSTA_POST.reason}     Created
Requisitar usuário 
    ${RESPOSTA_GET}    GET On Session    gorest    users/${RESPOSTA_POST.json()["id"]}
    ...                            headers=${HEADERS}
    Log            ${RESPOSTA_GET.text}
    Should Be Equal        ${RESPOSTA_GET.json()["id"]}            ${RESPOSTA_POST.json()["id"]}

Deletar usuário
    ${RESPOSTA_DELETE}    DELETE On Session    gorest    users/${RESPOSTA_POST.json()["id"]}
    ...                            headers=${HEADERS}

    Log            ${RESPOSTA_DELETE.text}
    Should Be Equal As Strings    ${RESPOSTA_DELETE.reason}     No Content

    


