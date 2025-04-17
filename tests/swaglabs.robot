*** Settings ***
Library            AppiumLibrary
Variables          ../locators/locator.py
Suite Setup        Mulai semuanya
Task Setup         Open Swag labs
Task Teardown      Close Apps
Suite Teardown     Akhir semuanya       

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP_PACKAGE}        com.swaglabsmobileapp
${ANDROID_PLATFORM_NAME}      Android  
${ANDROID_APP_ACTIVITY}       com.swaglabsmobileapp.MainActivity 
${ANDROID_UDID}               9xydfizdyp9dnn8x 
${REMOTE_URL}                 http://127.0.0.1:4723   

*** Tasks ***
Open Apps and login
    # Open Swag labs
    Login to Apps

*** Keywords ***
Open Swag labs
    Open Application    ${REMOTE_URL}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    appPackage=${ANDROID_APP_PACKAGE}
    ...    appActivity=${ANDROID_APP_ACTIVITY}
    ...    udid=${ANDROID_UDID}
    Set Appium Timeout    15
    Log    ini task setup dijalankan

Login to Apps
    Wait Until Element Is Visible    ${username_textbox}    15
    Input Text        ${username_textbox}    standard_user
    Input Password    ${password_textbox}    secret_sauce
    Click Element     ${login_button} 

Close Apps
    Close Application
    Log    ini task teardown dijalankan

Mulai semuanya
    Log    ini suite setup

Akhir semuanya
    Log    ini suite teardown    