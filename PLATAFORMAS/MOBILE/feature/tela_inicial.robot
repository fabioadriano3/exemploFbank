*** Settings ***
Library        AppiumLibrary

Resource        ../../MOBILE/Resources/startconnect.robot
Resource        ../../MOBILE/Steps/tela_inicial.robot
Variables       ../../MOBILE/Screens/tela_inicial.py 

Test Setup      Abrindo o app
Test Teardown   close session
*** Test Cases ***

Validar botao acessar_agora
  clicar no botao acessar_conta

Validar botao criar_conta
  clicar no botao criar_conta


        