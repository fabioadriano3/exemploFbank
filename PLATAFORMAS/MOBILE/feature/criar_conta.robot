*** Settings ***
Library        AppiumLibrary

Resource        ../../MOBILE/Resources/startconnect.robot
Resource        ../../MOBILE/Steps/criar_conta.robot

Variables       ../../MOBILE/Screens/criar_conta.py 

Test Setup      Abrindo o app
Test Teardown   close session
*** Test Cases ***


Validar cpf invalido 
  clicar no botao criar_conta 

#Validar cpf valido 
 # clicar no botao acessar_conta


