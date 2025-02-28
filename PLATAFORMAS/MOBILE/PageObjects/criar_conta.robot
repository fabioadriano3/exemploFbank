*** Settings ***
Library        AppiumLibrary
Library    FakerLibrary
Library    Process
Variables       ../Screens/criar_conta.py
#Variables       ../../MOBILE/Screens/criar_conta.py 
#Resource   ../Resources/gerarCpf.robot

Variables      ../Screens/criar_conta.py  # Importa a variável dgtCpf
Resource       ../Resources/gerarCpf.robot



     
     
*** Variables ***
    
*** Keywords ***


botao criar_conta_conta  

   Wait Until Page Contains Element       ${btn_Criar_conta}  40
   Click Element                          ${btn_Criar_conta}

Clicar e aceitar o termo de aceite  

   Wait Until Page Contains Element       ${termoAceite}  30
   Click Element                          ${termoAceite}

Validar texto de termos  
   Wait Until Page Contains Element       ${validartextoTermos}  
   Element Text Should Be    ${validartextoTermos}    Antes de avançar, leia e aceite os termos de abertura de conta, termos de uso e políticas de privacidade do Potência.


Clicar no botao ok de termos de aceite

   Wait Until Page Contains Element       ${botaoOk}  
   Element Should Be Enabled              ${botaoOk} 
  Capture Page Screenshot                 tela_completa.png
  Click Element                           ${botaoOk}
  Capture Page Screenshot                 tela_dePermisaoDeLocalizacao.png

Clicar no botao de permisao de localizaçao

   Wait Until Element Is Visible          ${botaoLocalizacao} 
  Capture Page Screenshot                 tela_Localizacao.png
  Wait Until Element Is Visible           ${botaoLocalizacao}
  Capture Page Screenshot                 tela_dePermisaoDeLocalizacao.png
  Click Element                           ${botaoLocalizacao}

Validar texto qual seu cpf 
   Wait Until Page Contains Element       ${validarTextQualCpf}  
   Capture Page Screenshot                 qual_seu_CPF1.png
   Element Text Should Be                  ${validarTextQualCpf}    Diz pra gente qual é seu CPF
   Capture Page Screenshot                 qual_seu_CPF2.png
   
Clicar no campo e Digitar Cpf Valido
    ${cpf}    Gerar CPF Valido   # Aqui chamamos o keyword para gerar o CPF
   Wait Until Element Is Visible        ${dgtCpf}  
   Capture Page Screenshot                 tela_cpf.png
   Click Element                           ${dgtCpf}
   Input Text                              ${dgtCpf}   ${cpf}
   Wait Until Page Does Not Contain    Este CPF está incorreto ou não existe    timeout=10s
   Page Should Not Contain Text            ${valiadarTextoCpfIncorrereto}    Este CPF está incorreto ou não existe   
   Capture Page Screenshot                 tela_cpfValido.png
   
Clicar no campo e Digitar Cpf invalido

  Wait Until Element Is Visible            ${dgtCpf}  
   Capture Page Screenshot                 tela_cpf.png
   Click Element                           ${dgtCpf}
   Input Text                              ${dgtCpf}    27635487654
   Capture Page Screenshot                 tela_cpfInvalido.png

Validar texto de cpf invalido
   Wait Until Page Contains Element       ${valiadarTextoCpfIncorrereto}  4
   Element Text Should Be                 ${valiadarTextoCpfIncorrereto}    Este CPF está incorreto ou não existe


Clicar no avancar 

   Element Should Be Enabled               ${botaoAvancar} 
   Click Element                           ${botaoAvancar}
   Capture Page Screenshot                 tela_deCpf.png
         