*** Settings ***

Library        AppiumLibrary
Library    Screenshot



*** Keywords ***

Abrindo o app
  
    Open Application    http://localhost:4723
    ...                 platformName=android 
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
   # ...                 app=/Users/arklok/Documents/Qa/projeto/fbank/PLATAFORMAS/MOBILE/app/android/FBANk.apk
    ...                  app=/Users/arklok/Downloads/APK/app-release_4.apk             
       
          

close session
  
  Capture Page Screenshot
  Close Application
