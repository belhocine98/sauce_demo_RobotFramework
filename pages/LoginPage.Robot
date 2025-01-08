
*** Settings ***
Documentation    Test de la fonctionnalité Login avec username et password
Library          SeleniumLibrary


*** Variables ***
${usernameA}       id:user-name
${passwordA}       id:password
${loginBtn}      id:login-button
${URL}            https://www.saucedemo.com/
${DASHBOARD}      class:title
${errorMessage}  xpath://h3[@data-test='error']

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${url}    Chrome
    Maximize Browser Window 

Enter Username
    [Arguments]    ${username}
    Input Text    ${usernameA}    ${username}  

Enter Password
    [Arguments]    ${password}
    Input Text    ${passwordA}    ${password}  

Submit Login Form
    Click Button    ${loginBtn}

Verify Login Failure
    Page Should Contain Element    ${errorMessage}
    