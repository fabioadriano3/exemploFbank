*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***
${BASE_URL}    https://www.4devs.com.br/ferramentas_online.php

*** Keywords ***
Gerar CPF Valido
    # Enviar requisição para a API do 4Devs
    ${headers}    Create Dictionary    Content-Type=application/x-www-form-urlencoded
    ${data}       Create Dictionary    acao=gerar_cpf    pontuacao=false    estado=

    ${response}   POST    ${BASE_URL}    data=${data}    headers=${headers}

    ${cpf}        Set Variable    ${response.text}
        RETURN    ${cpf}

