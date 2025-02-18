*** Settings ***
Library        AppiumLibrary

Resource        ../../MOBILE/Resources/startconnect.robot
Resource        ../../MOBILE/Steps/tela_inicial.robot
Resource        ../Steps/home.robot
Variables       ../../MOBILE/Screens/home.py 

Test Setup      Abrindo o app
Test Teardown   close session
*** Test Cases ***

Validar o botao extrato 
  clicar no botao Ver Extrato
  Validar o texto extrato

Validar o botao Pix 
  clicar no botao pix
  Validar o texto Area Pix
  
Validar o botao transferencia
  clicar no botao transferencia
  Validar o texto transferencia
        