*** Settings ***
Library        AppiumLibrary

Resource        ../../MOBILE/Resources/startconnect.robot
Resource        ../../MOBILE/Steps/tela_inicial.robot
Variables       ../../MOBILE/Screens/tela_inicial.py 

Test Setup      Abrindo o app
#Test Teardown   close session
*** Test Cases ***

home
  Abrindo o app
  #clicar no botao acessar_conta
  botao minhaConta
  #Sleep    2 minutes
  Capture Page Screenshot 
  #botao minhaConta
    
#login
    [Tags]    smoke
  #Abrindo o app
 # clicar no botao acessar_conta


        