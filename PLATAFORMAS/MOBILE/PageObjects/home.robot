*** Settings ***
Library        AppiumLibrary
Variables       ../Screens/home.py

*** Variables ***
@{finger}       Create List    274    247  # Coordenadas do ponto de clique pix
*** Keywords ***


botao pix
   Wait Until Page Contains Element       ${btnPix}  40
   Click Element                          ${btnPix}

texto Area Pix
     Wait Until Page Contains Element         ${txtPix}  40
    Capture Page Screenshot 


botao ver extrato
    Wait Until Page Contains Element       ${btnVerExtrato}  40
    Click Element                          ${btnVerExtrato}
    Capture Page Screenshot 

texto Extrato
     Wait Until Page Contains Element         ${txtExtrato}  40
    Capture Page Screenshot 

botao transferencia
    Wait Until Page Contains Element       ${btnTransferenciashome}  40
    Click Element                          ${btnTransferenciashome}
    Capture Page Screenshot 

texto transferencia
     Wait Until Page Contains Element         ${txtTansferencia}  40
    Capture Page Screenshot     