*** Settings ***

Library        AppiumLibrary
Library    Screenshot



*** Keywords ***

Abrindo o app
  
    Open Application    http://localhost:4723
    ...                 platformName=android 
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=/Users/arklok/Downloads/FBANK.apk             
       
          #  Wait Until Element Is Visible  xpath=//div[@id='result']  ${120}

close session
  
  Capture Page Screenshot
  Close Application
