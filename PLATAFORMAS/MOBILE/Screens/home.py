#*** Settings ***
#Library        AppiumLibrary

 

#*** Variables ***

#${btn_acessar_conta}  Set Variables "//*[contains(@text,'Acesse sua conta')]"
#${btn_acessar_conta}=   Set Variable  //android.widget.TextView[@text='Acesse sua conta']
#${btn_acessar_conta}=    Click Element                          //android.widget.TextView[@text='Acesse sua conta']  
btn_acessar_conta = "//android.widget.TextView[@text='Acesse sua conta']" 
BTN_PIX  = "//android.widget.TextView[@text='Pix']" 
btn_minhaConta = "//android.widget.TextView[@text='Minha conta']"