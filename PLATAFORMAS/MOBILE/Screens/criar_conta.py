#*** Settings ***
#Library        AppiumLibrary

 

#*** Variables ***
btn_Criar_conta = "//android.widget.TextView[@text='Criar uma conta']" 

termoAceite = "//android.widget.FrameLayout[@resource-id='android:id/content']/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup"
validartextoTermos="//android.widget.TextView[@text='Antes de avançar, leia e aceite os termos de abertura de conta, termos de uso e políticas de privacidade do Potência.'']"
botaoOk= "//android.widget.TextView[@text='Ok, entendi']"
botaoLocalizacao = "//android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_allow_foreground_only_button']"
validarTextQualCpf = "//android.widget.TextView[@text='Diz pra gente qual é seu CPF']"
dgtCpf = "//android.widget.EditText[@text='Número do CPF']"
botaoAvancar="//android.widget.TextView[@text='Avançar']" 
valiadarTextoCpfIncorrereto="//android.widget.TextView[@text='Este CPF está incorreto ou não existe']"