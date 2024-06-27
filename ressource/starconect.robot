*** Settings ***

Library        AppiumLibrary

#*** Test Cases ***

#login
 # Abrindo o app

*** Keywords ***

Abrindo o app
  
    Open Application    http://localhost:4723
    ...                 platformName=android 
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=/Users/arklok/Downloads/app-fbank_.apk  