*** Settings ***
Library        AppiumLibrary
Variables       ../Screens/tela_inicial.py

*** Variables ***
@{finger}       Create List    274    247  # Coordenadas do ponto de clique pix
*** Keywords ***

botao acessar_conta

   Wait Until Page Contains Element       ${btn_acessar_conta}  40
   Click Element                          ${btn_acessar_conta}   

botao criar_conta_conta

   Wait Until Page Contains Element       ${btn_acessar_conta}  40
   Click Element                          ${btn_acessar_conta}


botao pix

   Wait Until Page Contains Element       ${BTN_PIX }  40
   Click Element                          ${BTN_PIX }

botao minhaConta

   Wait Until Page Contains Element       ${btn_minhaConta}  40
   Click Element                          ${btn_minhaConta}

 