*** Settings ***
Library        AppiumLibrary

Resource        ../../MOBILE/Resources/startconnect.robot
Resource        ../../MOBILE/Steps/tela_inicial.robot
Variables       ../../MOBILE/Screens/tela_inicial.py 

Test Setup      Abrindo o app
Test Teardown   close session
*** Test Cases ***

Validar cpf valido 
  clicar no botao acessar_conta

Validar cpf invalido 
  clicar no botao criar_conta
