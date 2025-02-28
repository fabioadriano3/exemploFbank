*** Settings ***

Library       AppiumLibrary
Library    Screenshot



*** Keywords ***

Abrindo o app
  
    #Open Application    http://127.0.0.1:4723
    Open Application    http://127.0.0.1:4723
    ...                 platformName=android 
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
   # ...                 app=/Users/arklok/Documents/Qa/projeto/fbank/PLATAFORMAS/MOBILE/app/android/FBANk.apk
    ...                  app=/Users/resource.frodrigues/Downloads/app-release 3.apk
          

close session
  
  Capture Page Screenshot
  Close Application
