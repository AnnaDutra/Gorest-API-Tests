*** Settings ***
Documentation   Teste API Gorest: https://gorest.co.in/
Library    RequestsLibrary
Library    Collections

*** Variables ***
${URL_API}        https://gorest.co.in/
&{usuario_1}      name=Ana
...               email=ana20@mail.com
...               gender=female
...               status=active


*** Keywords ***
####AÇÕES
Conectar a minha API
    Create Session    gorest    ${URL_API}
    ${HEADERS}     Create Dictionary    content-type=application/json
    Set Suite Variable    ${HEADERS}
Cadastro de usuário 
    ${RESPOSTA}    Post Request    gorest    users
    ...                            data={"name": "${usuario_1.id}","email":"${usuario_1.email}","gender":"${usuario_1.geder}","status":"${usuario_1.status}" }
    ...                            headers=${HEADERS}
    Log            ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}


####CONFERENCIAS
Conferir o status code
    [Arguments]      ${STATUSCODE_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODE_DESEJADO}

Conferir o reason
    [Arguments]    ${REASON_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.reason}     ${REASON_DESEJADO}
Conferir se o usuário foi cadastrado
    Dictionary Should Contain Item    ${RESPOSTA.json()}    name             ${usuario_1.id}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    email            ${usuario_1.email}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    gender           ${usuario_1.geder}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    status           ${usuario_1.status}

    Should Not Be Empty    ${RESPOSTA.json()["id"]}



