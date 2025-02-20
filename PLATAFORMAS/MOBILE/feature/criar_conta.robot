*** Settings ***
Library        AppiumLibrary
#Library    ScreenCapLibrary

Resource        ../../MOBILE/Resources/startconnect.robot
Resource        ../../MOBILE/Steps/criar_conta.robot

Variables       ../../MOBILE/Screens/criar_conta.py 

Test Setup      Abrindo o app
Test Teardown   close session
*** Test Cases ***


Validar cpf valido 
 
  clicar no botao criar_conta 
  Clicar e aceitar o termo de aceite 
  Clicar no botao ok de termos de aceite
  Clicar no botao de permisao de localizaçao
  Sleep    5
  Validar texto qual seu cpf 
  Clicar no campo e Digitar Cpf Valido
  Clicar no avancar 
  
Validar cpf invalido 
 
  clicar no botao criar_conta 
  Clicar e aceitar o termo de aceite 
  Clicar no botao ok de termos de aceite
  Clicar no botao de permisao de localizaçao
  Sleep    5
  Validar texto qual seu cpf 
  Clicar no campo e Digitar Cpf invalido
  Validar texto de cpf invalido


