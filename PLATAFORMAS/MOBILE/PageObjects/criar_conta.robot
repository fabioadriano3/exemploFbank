*** Settings ***
Library        AppiumLibrary
Variables       ../Screens/criar_conta.py

*** Variables ***
@{finger}       Create List    274    247  # Coordenadas do ponto de clique pix
*** Keywords ***

botao criar_conta_conta  

   Wait Until Page Contains Element       ${btn_Criar_conta}  40
   Click Element                          ${btn_Criar_conta}