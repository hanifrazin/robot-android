*** Settings ***
Library        AppiumLibrary
Variables      ../locators/locator.py

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP_PACKAGE}        com.swaglabsmobileapp
${ANDROID_PLATFORM_NAME}      Android  
${ANDROID_APP_ACTIVITY}       com.swaglabsmobileapp.MainActivity 
${ANDROID_UDID}               9xydfizdyp9dnn8x 
${REMOTE_URL}                 http://127.0.0.1:4723   

*** Tasks ***
Open Apps and login
    Open Swag labs
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

Login to Apps
    Input Text        ${username_textbox}    standard_user
    Input Password    ${password_textbox}    secret_sauce
    Click Element     ${login_button} 