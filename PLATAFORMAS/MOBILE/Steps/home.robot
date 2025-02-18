*** Settings ***

Library        AppiumLibrary
Resource        ../PageObjects/home.robot
Resource    ../PageObjects/home.robot


*** Keywords ***

clicar no botao pix 
   botao pix  
Validar o texto Area Pix
    texto Area Pix
clicar no botao Ver Extrato 
   botao ver extrato   

Validar o texto extrato
    texto Extrato

clicar no botao transferencia
    botao transferencia

Validar o texto transferencia
    texto transferencia
